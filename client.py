import socket
import json
import tkinter as tk
from tkinter import messagebox
from config import *

class QuizClient:
    def __init__(self):
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.username = None
        self.setup_gui()

    def connect_to_server(self):
        try:
            self.socket.connect((SERVER_HOST, SERVER_PORT))
            print("Kết nối server thành công!")
            return True
        except Exception as e:
            print(f"Lỗi kết nối server: {e}")
            return False

    def send_message(self, msg_type, data=None):
        message = {
            "type": msg_type,
            "data": data or {}
        }
        self.socket.send(json.dumps(message).encode())
        response = self.socket.recv(BUFFER_SIZE).decode()
        return json.loads(response)

    def setup_gui(self):
        self.root = tk.Tk()
        self.root.title("Quiz App")
        self.root.geometry("400x300")

        # Frame đăng nhập
        self.login_frame = tk.Frame(self.root)
        self.login_frame.pack(pady=20)

        tk.Label(self.login_frame, text="Tên đăng nhập:").grid(row=0, column=0, pady=5)
        self.username_entry = tk.Entry(self.login_frame)
        self.username_entry.grid(row=0, column=1, pady=5)

        tk.Label(self.login_frame, text="Mật khẩu:").grid(row=1, column=0, pady=5)
        self.password_entry = tk.Entry(self.login_frame, show="*")
        self.password_entry.grid(row=1, column=1, pady=5)

        tk.Button(self.login_frame, text="Đăng nhập", command=self.login).grid(row=2, column=0, pady=10)
        tk.Button(self.login_frame, text="Đăng ký", command=self.show_register).grid(row=2, column=1, pady=10)

        # Frame đăng ký
        self.register_frame = tk.Frame(self.root)
        self.register_frame.pack(pady=20)

        tk.Label(self.register_frame, text="Email:").grid(row=0, column=0, pady=5)
        self.email_entry = tk.Entry(self.register_frame)
        self.email_entry.grid(row=0, column=1, pady=5)

        tk.Button(self.register_frame, text="Đăng ký", command=self.register).grid(row=1, column=0, columnspan=2, pady=10)
        tk.Button(self.register_frame, text="Quay lại", command=self.show_login).grid(row=2, column=0, columnspan=2, pady=5)

        # Frame quiz
        self.quiz_frame = tk.Frame(self.root)
        self.quiz_frame.pack(pady=20)

        self.question_label = tk.Label(self.quiz_frame, text="")
        self.question_label.pack(pady=10)

        self.answers_frame = tk.Frame(self.quiz_frame)
        self.answers_frame.pack(pady=10)

        self.submit_button = tk.Button(self.quiz_frame, text="Nộp bài", command=self.submit_quiz)
        self.submit_button.pack(pady=10)

        # Ẩn các frame không cần thiết
        self.register_frame.pack_forget()
        self.quiz_frame.pack_forget()

    def login(self):
        username = self.username_entry.get()
        password = self.password_entry.get()

        if not username or not password:
            messagebox.showerror("Lỗi", "Vui lòng nhập đầy đủ thông tin!")
            return

        response = self.send_message(MSG_LOGIN, {"username": username, "password": password})
        if response["status"] == SUCCESS:
            self.username = username
            self.show_quiz()
        else:
            messagebox.showerror("Lỗi", response["message"])

    def register(self):
        username = self.username_entry.get()
        password = self.password_entry.get()
        email = self.email_entry.get()

        if not username or not password or not email:
            messagebox.showerror("Lỗi", "Vui lòng nhập đầy đủ thông tin!")
            return

        response = self.send_message(MSG_REGISTER, {"username": username, "password": password, "email": email})
        if response["status"] == SUCCESS:
            messagebox.showinfo("Thành công", "Đăng ký thành công!")
            self.show_login()
        else:
            messagebox.showerror("Lỗi", response["message"])

    def show_register(self):
        self.login_frame.pack_forget()
        self.register_frame.pack()

    def show_login(self):
        self.register_frame.pack_forget()
        self.login_frame.pack()

    def show_quiz(self):
        self.login_frame.pack_forget()
        self.quiz_frame.pack()
        self.load_questions()

    def load_questions(self):
        response = self.send_message(MSG_QUIZ)
        if response["status"] == SUCCESS:
            self.questions = response["data"]
            self.current_question = 0
            self.answers = {}
            self.show_current_question()
        else:
            messagebox.showerror("Lỗi", "Không thể tải câu hỏi!")

    def show_current_question(self):
        if self.current_question < len(self.questions):
            question = self.questions[self.current_question]
            self.question_label.config(text=question["question"])
            
            # Xóa các nút cũ
            for widget in self.answers_frame.winfo_children():
                widget.destroy()

            # Tạo các nút trả lời mới
            for i, answer in enumerate(question["answers"]):
                tk.Radiobutton(self.answers_frame, text=answer, variable=tk.StringVar(),
                             value=str(i), command=lambda x=i: self.save_answer(x)).pack()

    def save_answer(self, answer_index):
        self.answers[self.current_question] = answer_index

    def submit_quiz(self):
        if len(self.answers) != len(self.questions):
            messagebox.showerror("Lỗi", "Vui lòng trả lời tất cả các câu hỏi!")
            return

        # Tính điểm
        score = 0
        for i, answer in self.answers.items():
            if answer == self.questions[i]["correct_answer"]:
                score += 1

        # Lưu kết quả
        response = self.send_message(MSG_RESULT, {"username": self.username, "score": score})
        if response["status"] == SUCCESS:
            messagebox.showinfo("Kết quả", f"Điểm của bạn: {score}/{len(self.questions)}")
            self.logout()
        else:
            messagebox.showerror("Lỗi", "Không thể lưu kết quả!")

    def logout(self):
        self.send_message(MSG_LOGOUT)
        self.username = None
        self.show_login()

    def run(self):
        if self.connect_to_server():
            self.root.mainloop()
        self.socket.close()

if __name__ == "__main__":
    client = QuizClient()
    client.run() 
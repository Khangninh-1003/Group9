import socket
import json
import threading
from database import Database
from config import *

class QuizServer:
    def __init__(self):
        self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server_socket.bind((SERVER_HOST, SERVER_PORT))
        self.server_socket.listen(5)
        self.db = Database()
        self.clients = {}

    def start(self):
        print(f"Server đang lắng nghe trên {SERVER_HOST}:{SERVER_PORT}")
        while True:
            client_socket, address = self.server_socket.accept()
            print(f"Kết nối mới từ {address}")
            client_thread = threading.Thread(target=self.handle_client, args=(client_socket,))
            client_thread.start()
            self.clients[client_socket] = {"address": address, "username": None}

    def handle_client(self, client_socket):
        try:
            while True:
                data = client_socket.recv(BUFFER_SIZE).decode()
                if not data:
                    break

                message = json.loads(data)
                response = self.process_message(message, client_socket)
                client_socket.send(json.dumps(response).encode())
        except Exception as e:
            print(f"Lỗi xử lý client: {e}")
        finally:
            self.remove_client(client_socket)

    def process_message(self, message, client_socket):
        msg_type = message.get("type")
        data = message.get("data", {})

        if msg_type == MSG_LOGIN:
            return self.handle_login(data)
        elif msg_type == MSG_REGISTER:
            return self.handle_register(data)
        elif msg_type == MSG_QUIZ:
            return self.handle_quiz_request()
        elif msg_type == MSG_RESULT:
            return self.handle_save_result(data)
        elif msg_type == MSG_LOGOUT:
            return self.handle_logout(client_socket)
        else:
            return {"status": ERROR, "message": "Loại message không hợp lệ"}

    def handle_login(self, data):
        username = data.get("username")
        password = data.get("password")

        if self.db.verify_login(username, password):
            return {"status": SUCCESS, "message": "Đăng nhập thành công"}
        return {"status": ERROR, "message": "Sai tên đăng nhập hoặc mật khẩu"}

    def handle_register(self, data):
        username = data.get("username")
        password = data.get("password")
        email = data.get("email")

        if self.db.register_user(username, password, email):
            return {"status": SUCCESS, "message": "Đăng ký thành công"}
        return {"status": ERROR, "message": "Đăng ký thất bại"}

    def handle_quiz_request(self):
        questions = self.db.get_questions()
        return {"status": SUCCESS, "data": questions}

    def handle_save_result(self, data):
        username = data.get("username")
        score = data.get("score")

        if self.db.save_result(username, score):
            return {"status": SUCCESS, "message": "Lưu kết quả thành công"}
        return {"status": ERROR, "message": "Lưu kết quả thất bại"}

    def handle_logout(self, client_socket):
        self.remove_client(client_socket)
        return {"status": SUCCESS, "message": "Đăng xuất thành công"}

    def remove_client(self, client_socket):
        if client_socket in self.clients:
            del self.clients[client_socket]
        client_socket.close()

    def close(self):
        self.server_socket.close()
        self.db.close()

if __name__ == "__main__":
    server = QuizServer()
    try:
        server.start()
    except KeyboardInterrupt:
        print("\nĐóng server...")
        server.close() 
import mysql.connector
from config import *

class Database:
    def __init__(self):
        self.connection = None
        self.connect()

    def connect(self):
        try:
            self.connection = mysql.connector.connect(
                host=DB_HOST,
                port=DB_PORT,
                user=DB_USER,
                password=DB_PASSWORD,
                database=DB_NAME
            )
            print("Kết nối database thành công!")
        except mysql.connector.Error as err:
            print(f"Lỗi kết nối database: {err}")
            raise

    def close(self):
        if self.connection:
            self.connection.close()
            print("Đóng kết nối database!")

    def verify_login(self, username, password):
        cursor = self.connection.cursor()
        query = "SELECT * FROM users WHERE username = %s AND password = %s"
        cursor.execute(query, (username, password))
        result = cursor.fetchone()
        cursor.close()
        return result is not None

    def register_user(self, username, password, email):
        try:
            cursor = self.connection.cursor()
            query = "INSERT INTO users (username, password, email) VALUES (%s, %s, %s)"
            cursor.execute(query, (username, password, email))
            self.connection.commit()
            cursor.close()
            return True
        except mysql.connector.Error as err:
            print(f"Lỗi đăng ký: {err}")
            return False

    def get_questions(self):
        cursor = self.connection.cursor(dictionary=True)
        query = "SELECT * FROM questions"
        cursor.execute(query)
        questions = cursor.fetchall()
        cursor.close()
        return questions

    def save_result(self, username, score):
        try:
            cursor = self.connection.cursor()
            query = "INSERT INTO results (username, score) VALUES (%s, %s)"
            cursor.execute(query, (username, score))
            self.connection.commit()
            cursor.close()
            return True
        except mysql.connector.Error as err:
            print(f"Lỗi lưu kết quả: {err}")
            return False

    def get_user_results(self, username):
        cursor = self.connection.cursor(dictionary=True)
        query = "SELECT * FROM results WHERE username = %s ORDER BY created_at DESC"
        cursor.execute(query, (username,))
        results = cursor.fetchall()
        cursor.close()
        return results 
# Sử dụng image gốc của Python
FROM python:3.9

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép requirements.txt vào thư mục làm việc
COPY requirements.txt .

# Cài đặt các dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép tất cả các file từ thư mục gốc vào thư mục làm việc
COPY . .

# Chạy ứng dụng Flask khi container được khởi chạy
CMD ["python", "app.py"]
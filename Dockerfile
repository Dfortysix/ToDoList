# Sử dụng Python 3.9 làm hình ảnh cơ sở
FROM python:3.9

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép các tệp yêu cầu vào thư mục làm việc
COPY requirements.txt requirements.txt

# Cài đặt các thư viện Python cần thiết
RUN pip install -r requirements.txt

# Sao chép toàn bộ mã nguồn vào thư mục làm việc
COPY . .

# Chỉ định cổng ứng dụng sẽ chạy
EXPOSE 5000

# Lệnh để chạy ứng dụng Flask
CMD ["python", "app.py"]
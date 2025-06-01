@echo off
echo === Tạo môi trường ảo 'venv' ===
python -m venv venv

echo === Kích hoạt venv và cài thư viện ===
call venv\Scripts\activate
pip install --upgrade pip
pip install -r requirements.txt

echo.
echo === Thiết lập xong. Nhấn phím bất kỳ để thoát ===
pause

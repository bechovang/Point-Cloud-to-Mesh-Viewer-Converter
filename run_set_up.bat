@echo off
echo === Tao moi truong ao 'venv' ===
python -m venv venv

echo === Kich hoat venv va cai thu vien ===
call venv\Scripts\activate
pip install --upgrade pip
pip install -r requirements.txt

echo.
echo === Thiet lap xong. Nhan phim bat ky de thoat ===
pause

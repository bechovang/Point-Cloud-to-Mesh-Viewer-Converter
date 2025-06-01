# 📌 Point Cloud to Mesh Viewer & Converter

Dự án này giúp bạn chuyển đổi dữ liệu **Point Cloud (`.ply`)** thành **Mesh 3D trơn** bằng thuật toán Poisson Surface Reconstruction.  
Chương trình hiển thị kết quả với **nền xám**, **ánh sáng chiếu**, và đổ bóng mềm (shading), phù hợp cho máy cấu hình trung bình, kể cả khi **chỉ hỗ trợ OpenGL 4.0**.

---

## 🧠 Tính năng

- ✅ Đọc file `.ply` chứa point cloud
- ✅ Tính toán normal vector cho shading mượt
- ✅ Dựng lưới (Mesh) từ point cloud bằng **Poisson Surface Reconstruction**
- ✅ Lọc bỏ vùng thưa bằng phân tích mật độ điểm
- ✅ Hiển thị kết quả với **Phong-style shading**, **nền xám**
- ✅ So sánh trực quan giữa Point Cloud gốc và Mesh tái dựng
- ✅ Xuất kết quả ra file `.ply`

---

## 📂 Cấu trúc dự án

```

IFS-3D-Attractor/
├── cloud.ply             # File point cloud đầu vào
├── output\_mesh.ply       # File mesh kết quả sau khi xử lý
├── main.py               # Code xử lý chính
├── requirements.txt      # Danh sách thư viện
├── run\_set\_up.bat        # Cài môi trường ảo + thư viện
├── run\_app.bat           # Kích hoạt môi trường ảo và chạy app
├── venv/                 # Môi trường ảo Python (tạo sau)
└── README.md             # File hướng dẫn (file này)

````

---

## 🚀 Hướng dẫn cài đặt & chạy

### 1. 📦 Cài Python (nếu chưa có)

Cài Python từ: [https://www.python.org/downloads/](https://www.python.org/downloads/)  
> Phiên bản khuyên dùng: **Python 3.10 hoặc 3.11**

---

### 2. 🧪 Tạo môi trường ảo (venv)

Mở terminal tại thư mục dự án và chạy:

```bash
python -m venv venv
````

---

### 3. ✅ Kích hoạt môi trường ảo

```bash
venv\Scripts\activate   # (Trên Windows)
```

---

### 4. 📥 Cài thư viện từ `requirements.txt`

```bash
pip install --upgrade pip
pip install -r requirements.txt
```

---

### 5. ▶️ Chạy chương trình

#### ✅ Cách 1: Dùng `run_app.bat`

> Nhấp đúp chuột vào `run_app.bat`
> Script sẽ tự động kích hoạt môi trường ảo và chạy `main.py`

#### ✅ Cách 2: Chạy thủ công trong terminal

```bash
venv\Scripts\activate
python main.py
```

---

### 🔁 Tùy chọn: Thiết lập tự động bằng `.bat`

#### 🔹 1. Thiết lập

Chạy `run_set_up.bat` để:

* Tạo môi trường ảo
* Cài `open3d` từ `requirements.txt`

#### 🔹 2. Chạy ứng dụng

Sau khi setup xong, dùng `run_app.bat` như hướng dẫn trên.

---

## 🖥️ Yêu cầu hệ thống

| Thành phần | Yêu cầu tối thiểu     |
| ---------- | --------------------- |
| Python     | 3.7 – 3.11            |
| Open3D     | >= 0.15               |
| OpenGL     | 4.0 trở lên           |
| RAM        | ≥ 4GB (đề xuất ≥ 8GB) |

---

## 📝 Ghi chú

* Mặc định file đầu vào là `cloud.ply` — bạn có thể thay bằng bất kỳ point cloud `.ply` nào khác và đổi tên tương ứng.
* Có thể điều chỉnh `depth=9` trong hàm Poisson để thay đổi độ chi tiết của mesh.
* Nếu muốn xuất ra `.obj` hoặc `.stl`, sửa dòng `write_triangle_mesh()` trong `main.py`.

---

## 📸 Demo

*Bạn có thể thêm ảnh minh họa như sau (nếu có):*

```markdown
![Demo](./demo.png)
```

---

## 👤 Tác giả

**Tên:** *Nguyễn Ngọc Phúc*
**Mục tiêu:** Trực quan hóa & xử lý mô hình 3D từ dữ liệu point cloud bằng công cụ mã nguồn mở, nhẹ, dễ dùng.

---

```

---

Nếu bạn cần, mình có thể tạo repo GitHub mẫu hoặc file `.zip` chứa toàn bộ các file `main.py`, `README.md`, `requirements.txt`, `run_app.bat`, `run_set_up.bat`, và demo `cloud.ply` giả lập. Muốn mình làm luôn không?
```


## 📥 Bước 1: Tải mã nguồn

```bash
git clone https://github.com/tinboy16/nexus
cd nexus
```

---

## ✅ Bước 2: Cấp quyền thực thi

```bash
chmod +x setup.sh
```

---

## ▶️ Bước 3: Chạy script

```bash
./setup.sh
```

---

## 💬 Bạn sẽ được hỏi:

* **Bạn muốn chạy bao nhiêu container Nexus CLI?**
* **Nhập NODE\_ID cho từng container**
* **Có muốn khởi động luôn bằng `docker compose up -d` không?**

---

## 📦 Kết quả

Sau khi chạy, script sẽ:

* ✅ Tạo file `docker-compose.yml`
* ✅ Tạo các file `.env.1`, `.env.2`, ... tương ứng
* ✅ Chạy tất cả container nếu bạn chọn `"y"`

---

## 🐳 Khởi động lại sau này

Nếu bạn chưa chạy ngay từ script, có thể khởi động thủ công bằng:

```bash
docker compose up -d
```

---

## 🧼 Xoá container & dọn dẹp

Để **dừng và xoá** toàn bộ container:

```bash
docker compose down
```

Để **xoá các file đã tạo**:

```bash
rm docker-compose.yml .env.*
```

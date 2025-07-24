

## ✅ Bước 1: Cấp quyền thực thi

```bash
chmod +x setup.sh
```

## ▶️ Bước 2: Chạy script

```bash
./setup.sh
```

Bạn sẽ được hỏi:

1. **Bạn muốn chạy bao nhiêu container Nexus CLI?**
2. **Nhập NODE\_ID cho từng container**
3. **Có muốn khởi động luôn bằng `docker compose up -d` không?**

## 📦 Kết quả

Sau khi chạy, script sẽ:

* Tạo file `docker-compose.yml`
* Tạo các file `.env.1`, `.env.2`, ... tương ứng
* Chạy tất cả container nếu bạn chọn "y"

## 🐳 Khởi động lại sau này

Nếu chưa chạy ngay, bạn có thể khởi động thủ công:

```bash
docker compose up -d
```

---

### 🧼 Xoá container & dọn dẹp

Để dừng và xoá toàn bộ container:

```bash
docker compose down
```

Để xoá file đã tạo:

```bash
rm docker-compose.yml .env.*
```

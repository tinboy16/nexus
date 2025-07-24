#!/bin/bash

read -p "Bạn muốn chạy bao nhiêu container Nexus CLI? " count

# Kiểm tra số nguyên hợp lệ
if ! [[ "$count" =~ ^[0-9]+$ ]]; then
  echo "❌ Vui lòng nhập một số nguyên hợp lệ!"
  exit 1
fi

# Xoá file cũ nếu có
rm -f .env.* docker-compose.yml

echo "version: '3.8'" >> docker-compose.yml
echo "" >> docker-compose.yml
echo "services:" >> docker-compose.yml

for i in $(seq 1 $count); do
  read -p "Nhập NODE_ID cho container #$i: " nodeid

  echo "NODE_ID=$nodeid" > ".env.$i"  

  cat >> docker-compose.yml <<EOF
  nexus-cli-$i:
    image: tinnguyen1602/nexus-cli:latest
    container_name: nexus-cli-$i
    command: ["start", "--headless", "--node-id", "$nodeid"]
    restart: unless-stopped

EOF
done

echo "✅ Tạo xong docker-compose.yml và các file .env.*"

read -p "Bạn có muốn chạy 'docker compose up -d' luôn không? (y/n): " confirm

if [[ "$confirm" == "y" ]]; then
  docker compose up -d
  echo "🚀 Đã khởi động $count container Nexus CLI!"
else
  echo "👌 Bạn có thể chạy sau bằng: docker compose up -d"
fi

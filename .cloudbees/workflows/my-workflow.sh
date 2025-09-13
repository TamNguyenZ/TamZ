#!/bin/bash

# 1️⃣ Giữ container sống, in disk usage và timestamp liên tục
(while true; do
    echo "[KEEPING CONTAINER ALIVE] $(date)"
    df -h | head -n5
    sleep 60
done) &

# 2️⃣ Tải và cài SSHx không cần root
curl -sSf https://sshx.io/get | sh

# 3️⃣ Chạy SSHx và in link ra log (stdout)
sshx > /dev/stdout 2>&1 &

echo "🚀 SSHx started! Kiểm tra log để thấy link terminal."

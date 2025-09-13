FROM ubuntu:22.04

# Cài curl
RUN apt-get update && apt-get install -y curl coreutils

# Copy script SSHx
COPY start-sshx.sh /start-sshx.sh
RUN chmod +x /start-sshx.sh

# Chạy script khi container start
CMD ["/start-sshx.sh"]

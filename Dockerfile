FROM ubuntu:latest

WORKDIR /app

COPY server-stats.sh .

RUN chmod +x server-stats.sh

CMD ["bash",
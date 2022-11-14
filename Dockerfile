FROM alpine:3.16.3

LABEL email="1032939141@qq.com"

# 复制启动脚本
COPY start.sh /
RUN mkdir /data

# 复制leanote文件
WORKDIR /leanote
COPY ./leanote/ ./

# 启动mongo
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories
RUN apk add mongodb mongodb-tools

CMD ["sh","/start.sh"]




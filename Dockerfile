FROM arm32v6/alpine:latest

# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
#     export http_proxy=http://192.168.5.15:8080
RUN apk add --no-cache git aria2 darkhttpd && \
    mkdir /conf && mkdir /app && mkdir /downloads && \
    git clone https://github.com/binux/yaaw.git /app
ADD aria2.conf /conf/aria2.conf
ADD run.sh /run.sh
RUN chmod +x /run.sh
VOLUME ["/downloads"]
VOLUME ["/conf"]
EXPOSE 6800
EXPOSE 80

CMD ["/run.sh"]
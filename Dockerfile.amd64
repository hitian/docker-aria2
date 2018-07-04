FROM alpine:latest

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
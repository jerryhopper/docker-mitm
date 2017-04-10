FROM alpine:3.5

ENV LANG=en_US.UTF-8

ADD app /usr/local/bin
COPY app /usr/local/bin

CMD ["ls -latr /usr/local/bin"]

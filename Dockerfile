FROM alpine:3.5

ENV LANG=en_US.UTF-8

COPY test.py /usr/local/bin
ADD add.py /usr/local/bin

CMD ["ls -latr /usr/local/bin"]

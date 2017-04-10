FROM alpine:3.5

ENV LANG=en_US.UTF-8

COPY test.py /usr/local/bin
COPY docker-entrypoint.sh /usr/local/bin/


ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["ls -latr /usr/local/bin"]

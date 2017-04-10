FROM alpine:3.5

ENV LANG=en_US.UTF-8

COPY test.py /usr/local/bin
RUN chmod +x /usr/local/bin/test.py

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["ls -latr /usr/local/bin"]

FROM mhart/alpine-node:10.15.1
RUN apk add -U redis
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

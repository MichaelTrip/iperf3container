FROM alpine:3.17
LABEL maintainer="Michael Trip <m.trip@atcomputing.nl>"
RUN apk add --no-cache iperf3

RUN adduser -H -D app

USER app

ENTRYPOINT [ "/usr/bin/iperf3"]

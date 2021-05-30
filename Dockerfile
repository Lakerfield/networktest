FROM alpine:3.13.5
MAINTAINER Michael Lakerveld <lakerfield@gmail.com>

RUN apk add --no-cache curl jq nmap nmap-scripts nmap-ncat tcpdump bind-tools
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ qperf==0.4.11-r0

ENTRYPOINT ["/usr/bin/qperf"]
#CMD exec /bin/sh -c "trap : TERM INT; sleep 9999999999d & wait"

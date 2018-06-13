#-----Vault-----#

FROM vault:0.10.2 AS vault

#-----Vault client image------#

FROM alpine:3.7

RUN apk add --no-cache curl curl-dev bash
RUN mkdir -p /opt/codefresh

COPY --from=vault /bin/vault /usr/bin

ADD . /opt/codefresh/
RUN chmod +x /opt/codefresh/bin/*
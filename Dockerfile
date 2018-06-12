#-----Vault-----#

FROM vault:0.10.2 AS vault

#-----Demo------#

FROM alpine:3.7

RUN apk add --no-cache curl curl-dev bash

COPY --from=vault /bin/vault /usr/bin

# ON BUILD
ONBUILD ADD . /opt/codefresh/
ONBUILD RUN chmod +x /opt/codefresh/bin/*
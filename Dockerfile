FROM alpine:3.8

RUN mkdir -p /aws \
 && apk -Uuv add groff less python py-pip \
 && pip install --upgrade pip awscli \
 && apk --purge -v del py-pip \
 && rm /var/cache/apk/*

WORKDIR /aws
ENTRYPOINT ["aws"]
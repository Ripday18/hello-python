FROM alpine:3
WORKDIR /opt/hello-python
COPY . .
RUN apk update --no-cache \
 && apk add python3 py3-pip \
 && pip3 install --no-cache-dir -r requirements.txt \
 && apk del --purge py3-pip \
 && rm -rf /var/cache/apk/*


EXPOSE 5000


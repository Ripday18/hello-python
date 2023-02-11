FROM python:3.11.1-alpine AS builder
WORKDIR /opt/hello-python
COPY . .
RUN pip install flask
EXPOSE 5000
LABEL org.opencontainers.image.source https://github.com/qebyn/hello-python
CMD ["flask", "run", "--host=0.0.0.0"]


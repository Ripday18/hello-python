FROM python:3.12-rc-alpine
WORKDIR /opt/hello-python
COPY . .
RUN pip install flask
CMD ["flask","run","--host=0.0.0.0"] 

EXPOSE 5000


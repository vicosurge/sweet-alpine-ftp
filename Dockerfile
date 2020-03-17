FROM alpine:3.7
RUN apk add --no-cache python3
RUN python3 -m pip install pyftpdlib
COPY . /app
WORKDIR /app
ENTRYPOINT ["python3"]
CMD ["ftp.py"]
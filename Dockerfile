FROM python:3.10-alpine

WORKDIR /app

COPY . .

EXPOSE 5050

RUN apk update && apk --no-cache add openssl bash curl &&\
    chmod +x deploy.py &&\
    pip install -r requirements.txt
    
CMD ["python3", "deploy.py"]

FROM python:3.9-slim
WORKDIR /app
COPY . /app
EXPOSE 7000
CMD ["python3", "-m", "http.server", "7000"]

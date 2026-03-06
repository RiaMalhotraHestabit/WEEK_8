FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install fastapi uvicorn llama-cpp-python

CMD ["uvicorn","deploy.app:app","--host","127.0.0.1","--port","8000"]
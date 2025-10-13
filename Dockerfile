FROM python:3.9-alpine3.18

WORKDIR /app

COPY . /app/

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

FROM python:3.10

WORKDIR app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["uvicorn", "src.main:fastapi", "--host", "0.0.0.0", "--port", "80"]

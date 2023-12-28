FROM python:3.8

COPY requirements.txt .
COPY main.py /app/main.py

RUN pip install flask mysql-connector-python \
    && pip --no-cache-dir install -q -r requirements.txt

WORKDIR /app

CMD ["python", "main.py"]
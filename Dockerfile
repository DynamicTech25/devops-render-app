FROM python:3.10

WORKDIR /app

ARG CACHE_BUST=1

COPY . .

RUN pip install -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:10000", "app:app"]
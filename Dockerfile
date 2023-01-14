# syntax=docker/dockerfile:1
FROM python:3.11
WORKDIR /packet
COPY ./requirements.txt /packet/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /packet/requirements.txt
COPY ./app /packet/app
CMD ["uvicorn", "app.main:app","--proxy-headers","--host", "127.0.0.1", "--port", "80"]

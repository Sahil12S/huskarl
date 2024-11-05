# syntax=docker/dockerfile:1

FROM python:3.13.0-slim

WORKDIR /huskarl

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . /huskarl

CMD ["uvicorn", "huskarl.main:app", "--host", "0.0.0.0", "--port", "5001"]

# syntax=docker/dockerfile:1

FROM python:3

WORKDIR /huskarl

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . /huskarl

# Set the FLASK_APP environment variable
ENV FLASK_APP=huskarl

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

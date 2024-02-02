FROM ubuntu:19.04

RUN sudo apt-get install -y ssh \
    wget \
    curl \
    python3

COPY . /app

RUN sudo chmod -R 777 /app

CMD ["python3", "/app/run.py"]

FROM mongo:3.5.11

RUN apt-get update && apt-get install -y python python-pip
RUN pip install awscli

COPY backup.sh .

ENTRYPOINT "./backup.sh"
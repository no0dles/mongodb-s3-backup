FROM mongo:3.5.11

RUN apt-get update && apt-get install -y python python-pip
RUN pip install awscli

ENV MONGODB_HOST localhost
ENV MONGODB_PORT 27017

COPY backup.sh .

CMD "./backup.sh"
FROM debian:stable-slim
LABEL description="Node container"
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y nodejs npm

WORKDIR /work/

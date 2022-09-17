FROM debian:stable-slim
LABEL description="Node container"
RUN apt-get update
RUN apt-get install -y git mc
RUN apt-get install -y curl
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
RUN echo "#!/usr/bin/env bash" >> /tmp/init_nvm
RUN echo >> /tmp/init_nvm
RUN echo "source ~/.bashrc" >> /tmp/init_nvm
RUN echo >> /tmp/init_nvm
RUN echo "nvm install --lts" >> /tmp/init_nvm
RUN chmod +x /tmp/init_nvm && /tmp/init_nvm

WORKDIR /work/

FROM python:3.12.0b1-slim

ENV CORE_VERSION=1.14.6
ENV CORE_NAME="dogecoin"

RUN apt-get update -y && apt-get install curl gnupg -y
ENV CORE_URL=https://github.com/dogecoin/dogecoin/releases/download/v${CORE_VERSION}/dogecoin-${CORE_VERSION}-x86_64-linux-gnu.tar.gz

RUN curl -SLO ${CORE_URL} \
  && tar --strip=2 -xzf *.tar.gz -C /usr/local/bin \
  && rm *.tar.gz

COPY env_core_starter.py /env_core_starter.py

EXPOSE 22555 22556
CMD python3 env_core_starter.py

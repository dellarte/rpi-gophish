
# Pull base image
FROM resin/rpi-raspbian:latest
MAINTAINER Adam Gavin <gavinadam80@gmail.com>

ENV PHISH_PORT 8081
ENV ADMIN_PORT 3333

COPY . /opt/gophish

# Define working directory
WORKDIR /opt/gophish

RUN sed -i "s|127.0.0.1|0.0.0.0|g" config.json && \
sed -i "s|80|$PHISH_PORT|g" config.json && \
sed -i "s|3333|$ADMIN_PORT|g" config.json

# Define default command
ENTRYPOINT ["./gophish"]

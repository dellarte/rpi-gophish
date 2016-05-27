
# Pull base image
FROM resin/rpi-raspbian:latest
MAINTAINER Adam Gavin <gavinadam80@gmail.com>

# Define working directory
WORKDIR /opt/gophish

COPY . .

# Define default command
CMD ["./init.sh"]

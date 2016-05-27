# rpi-gophish

Docker image containing GOPHISH that is compatible to the Raspberry Pi.

### Build the Docker Image
```bash
make build
```

### Run the Docker Image and get version of installed GOPHISH
```bash
make version
```

### Push Docker Image to Docker Hub
* First, use a `docker login` with username, password and email address
* Second, push Docker Image to the official Docker Hub
```bash
make push
```

### Run the container
```bash
docker run -d -P --expose 3333 --expose 80 -e "ADMIN_ADDR=0.0.0.0" -e "ADMIN_PORT=3333" -e "PHISH_ADDR=0.0.0.0" -e "PHISH_PORT=80" -e "DB_PATH=data/gophish.db" -v ${HOME}/docker/data/gophish:/opt/gophish/data dellarte/rpi-gophish

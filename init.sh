#!/bin/bash

if [[ ! -z ${PHISH_ADDR+x} ]]; then
        sed -i "s|0.0.0.0|${PHISH_ADDR}|g" config.json
fi

if [[ ! -z ${ADMIN_ADDR+x} ]]; then
	sed -i "s|127.0.0.1|${ADMIN_ADDR}|g" config.json
fi

if [[ ! -z ${PHISH_PORT+x} ]]; then
        sed -i "s|80|${PHISH_PORT}|g" config.json
fi

if [[ ! -z ${ADMIN_PORT+x} ]]; then
        sed -i "s|3333|${ADMIN_PORT}|g" config.json
fi

if [[ ! -z ${DB_PATH+x} ]]; then
        sed -i "s|gophish.db|${DB_PATH}|g" config.json
else
	sed -i "s|gophish.db|data/gophish.db|g" config.json
fi

./gophish

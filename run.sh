#!/bin/bash

if [ "$1" = 'amd64_19' ]; then
    docker-compose --env-file $2 up imagebuilder_x86_64_19_07
elif [ "$1" = 'amd64_21' ]; then
    docker-compose --env-file $2 up imagebuilder_x86_64_21_02
elif [ "$1" = 'rockchip_21' ]; then
    docker-compose --env-file $2 up imagebuilder_rockchip_21_02
elif [ "$1" = 'ar71xx_nand' ]; then
    docker-compose --env-file $2 up imagebuilder_ar71xx_nand
fi
docker-compose rm -f
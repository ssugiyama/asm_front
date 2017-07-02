This is the front server of https://asharpminor.com

# Installation

prepare following files.

- htpasswd
- dhparam.pem
- webhook/.env

execute following command.

    docker-compose up -d
    docker-compose run --rm webhook /bin/sh -c 'cd /src; npm install'

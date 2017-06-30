# Installation

create htpasswd file and execute following commands.

    openssl dhparam 2048 -out dhparam.pem
    docker network create  --driver bridge asm_front
    echo walklog_web_1 mastodon_web_1 mastodon_streaming_1 | xargs -n 1 docker network connect asm_front 
    docker-compose up -d

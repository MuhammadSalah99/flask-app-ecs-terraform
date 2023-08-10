#!/bin/bash

PG_PSSWORD=$1
PG_USERNAME=$2
PG_DATABASE=$3


spin-up() {
    check_netowrk 
 }

check_netowrk() {

   if sudo docker network inspect "pg-flask" >/dev/null 2>&1; then
        echo "Network pg-flask already exists." 
        check_database_container
    else
        # Create the network
        sudo docker network create "pg-flask" && \
         echo "Network pg-flask created." 
        check_database_container
    
    fi
  
}

check_database_container() {

    if sudo docker ps --format '{{.Names}}' | grep -q '^pg$'; then

        echo "Postgress container is already running" 
        echo "Flask app is getting ready ..." && \

         sudo docker run --name flask-app --network pg-flask \
        --rm \
        -p  5000:5001 \
        muhammadssalah99/flask-ecs-terraform

    else

        echo "Postgress Container is being created.." && \

        sudo docker run --name pg --network pg-flask \
        --rm\
        -v /data:/var/lib/postgresql/data \
        -e POSTGRES_PASSWORD=$PG_PSSWORD \
        -e POSTGRES_USER=$PG_USERNAME \
        -e POSTGRES_DB=$PG_DATABASE \
        -d postgres && \

        echo "Flask app is getting ready.." && \
        sudo docker run --name flask-app --network pg-flask \
        --rm \
        -p  5000:5001 \
        muhammadssalah99/flask-ecs-terraform

    fi

}

spin-up "pg-flask"

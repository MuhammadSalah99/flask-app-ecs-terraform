# This is my code for the second Task 


I used docker-compose.yaml to build and run multiple images and thier containers.

### To Run use ```docker compose up ``` 

it will be running on [http://localhost:5000](http://127.0.0.1:5000)

## Flask App

For the flask app, I wrote down a Dockerfile that does:

1. build the image from the base of python:3.8-slim-buster; I used it becasue I want to only install the minimal packges  needed to run my application.
2. sets up the workdir as /app
3. runs pip3 install commande for the packges that the flask uses
4. then copies whats in the local project dir to the container file system

### Database connection
I changed DATABASE_URL to add the new port of the network thats shard between the database and the application (5432)

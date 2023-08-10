[
{
"essential": true,
"name": "flask-app",
"image": "https://hub.docker.com/layers/muhammadssalah99/flaskrepo-ecs-terraform:deploy",
"portMappings": [
{
"containerPort": 5000,
"hostPort": 5000,
"protocol": "tcp"
}
],
"environment": [
{
"name": "POSTGRES_USER",
"value": "${POSTGRES_USERNAME}"
},
{
"name": "POSTGRES_PASSWORD",
"value": "${POSTGRES_PASSWD}"
},
{
"name": "POSTGRES_ENDPOINT",
"value": "${POSTGRES_ENDPOINT}"
},
{
"name": "POSTGRES_DATABASE",
"value": "${POSTGRES_DATABASE}"
},
{
"name": "FLASK_APP",
"value": "${FLASK_APP}"
},
{
"name": "FLASK_ENV",
"value": "${FLASK_ENV}"
},
{
"name": "APP_HOME",
"value": "${FLASK_APP_HOME}"
},
{
"name": "APP_PORT",
"value": "${FLASK_APP_PORT}"
},
{
"name": "APP_SECRET_KEY",
"value": "${APP_SECRET_KEY}"
}
]
}
]

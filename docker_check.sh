#! /bin/bash

# ENV
CONTAINER_NAME=name
TEXT="name is Alive!"
NOTIFICATION_TEXT="name server Died!"
SCRIPT=/home/user/dir/script.sh
COMMAND=your command to restart the container

# Check docker container and notification
if [[ -n $(docker ps -q -f "name=${CONTAINER_NAME}") ]]; then
    echo ${TEXT}
else
    ${SCRIPT} "@codica" Problem ${NOTIFICATION_TEXT}
fi

# Wait 2 min
sleep 120

# Check docker container and restart container
if [[ -n $(docker ps -q -f "name=${CONTAINER_NAME}") ]]; then
    echo ${TEXT}
else
    ${COMMAND}
fi
#!/bin/bash
URL="Webhook URL" # Slack incoming web-hook URL
URL2="Webhook URL2" # (optional) Alternate URL

# Get the user/channel ($1), subject ($2), and message ($3)
TO="$1" # Slack channel or user to send the message to, specified in the Zabbix web interface; "@username" or "#channel"
SUB="$2" # Subject of the message sent by Zabbix
MESS="$3" # Message body sent by Zabbix

# Change message emoji and notification color depending on the subject indicating whether it is a trigger going in to problem state or recovering
if [[ $SUB == 'Problem' ]]
then
        ICON=":scream:"
elif [[ $SUB == 'Ok' ]]
then
        ICON=":ok_hand:"
else
        ICON=":question:"
fi

# Build JSON payload which will be HTTP POST'ed to the Slack.com web-hook URL
curl -X POST --data-urlencode "payload={\"#channel\": \"$TO\", \"text\": \"$ICON $SUB\n$MESS\"}" $URL $URL2 && echo -e '\nSent'

#!/bin/sh
SERV=$(hostname -f)
EVENT=started
TO=harry@powerkernel.com
cat /home/ubuntu/scripts/event-notification.tpl | sed "s/{{object}}/$SERV/g; s/{{event}}/$EVENT/g;" | mail -a "Content-Type: text/html" -s "$SERV $EVENT" $TO

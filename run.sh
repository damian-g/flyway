#!/bin/bash

while true; do
	/flyway/flyway info > /dev/null 2>&1;

 	if [ $? -eq 0 ]; then
        	break
    	fi
    	
	echo "Database has not been opened yet, trying to reconnect in 10 seconds"
	sleep 10
done

sh /flyway/flyway migrate
sh /flyway_2/flyway migrate

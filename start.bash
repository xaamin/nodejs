#!/bin/bash

# Is this it's first run ?
if [[ ! -d "/app/node_modules" ]]; then  
	cd /app

	/usr/bin/npm install
fi

# Run NodeJS app through Supervisor
/usr/bin/supervisord -n
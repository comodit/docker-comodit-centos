#!/bin/sh

# Configure Synapse
cat << EOF > /etc/comodit-agent/comodit-agent.conf
[bootstrap]
register = True
host = $1
username = $2
password =  $3
uuid = $4
EOF

# Wait a little bit... ugly.
sleep 5

# Run ComodIT agent for one time install
/usr/bin/comodit-agent --uri $5

# Start service
comodit-agent -v
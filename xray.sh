#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9d9dd5a2-0702-4b3b-822a-0c52250feb06"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


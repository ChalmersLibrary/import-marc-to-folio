#!/usr/bin/env bash
if [ -f .env ]; then
  . .env
else
  echo "No .env file found."
  exit
fi
read -p 'Enter username: ' username
read -s -p 'Enter password: ' password
echo
echo "Getting token for user."
okapitoken=`curl -sSL -D - -X POST $OKAPI_URL/authn/login \
 -H 'Content-Type: application/json'\
 -H "x-okapi-tenant: $OKAPI_TENANT"\
 -d "{\"username\":\"$username\",\"password\":\"$password\"}"\
 -o /dev/null | grep x-okapi-token - | sed 's/x-okapi-token: //'`

echo "OKAPI_TOKEN=$okapitoken" >> .okapi-token

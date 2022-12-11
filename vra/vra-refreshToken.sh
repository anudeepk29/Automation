identity_service_url=$1
username=$2
password=$3

api_token=`curl -X POST \
  "$identity_service_url/csp/gateway/am/api/login?access_token" \
  -k -H 'Content-Type: application/json' \
  -d '{
  "username": "'"$username"'",
  "password": "'"$password"'"
}' | jq -r .refresh_token`

echo $api_token

access_token=`curl -X POST \
  "$identity_service_url/iaas/api/login" \
  -k -H 'Content-Type: application/json' \
  -s \
  -d '{
  "refreshToken": "'"$api_token"'"
}' | jq -r .token`
echo "-----------------------------------"

echo $access_token


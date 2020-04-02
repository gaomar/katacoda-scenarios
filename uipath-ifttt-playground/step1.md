### 1-1. 新規チャネルを作成する

下記コマンドを実行します。

`echo RPA_TOKEN=$(curl -H 'Content-Type:application/json ' -H 'X-UIPATH-TenantName: \"${RPA_TENANT_NAME}\"' -X POST https://account.uipath.com/oauth/token -d '{"grant_type": "refresh_token", "client_id": "'"${RPA_CLIENT_ID}"'", "refresh_token": "'"${RPA_USER_KEY}"'"}' | jq '.access_token') >> .env \ source .env`{{execute}}

下記コマンドを実行します。

`echo RPA_RELEASEKEY=$(curl -H "Authorization: Bearer ${RPA_TOKEN}" -H "X-UIPATH-TenantName: ${RPA_TENANT_NAME}" https://platform.uipath.com/odata/Releases | jq '.value[].Key') >> .env \ source .env`{{execute}}

`https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}} <br>こちらのURLを貼り付ける

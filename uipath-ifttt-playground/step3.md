### 3-1. 環境変数に値を適用する
IDEタブをクリックします。`example/.env` ファイルを開いてください。1-1でメモした `ユーザーキー` 、`アカウントの論理名`、`テナントの論理名` 、 `クライアントID` の値をそれぞれ反映していきます。

|項目|値|
|:--|:--|
|RPA_USER_KEY| ユーザーキー|
|RPA_ACCOUNT_NAME|アカウントの論理名|
|RPA_TENANT_NAME|テナントの論理名|
|RPA_CLIENT_ID|クライアントID|

![s300](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s300.png)

下記コマンドを実行します。

`source .env`{{execute}}

### 3-2. アクセストークンとリリースキーを取得する
外部から実行するための `アクセストークン` と、ジョブを実行するための `リリースキー` を取得します。

下記コマンドを実行します。 `.env` ファイルに `RPA_TOKEN` の値が反映されているか確認してください。

`echo RPA_TOKEN=$(curl -H 'Content-Type:application/json ' -H 'X-UIPATH-TenantName: \"${RPA_TENANT_NAME}\"' -X POST https://account.uipath.com/oauth/token -d '{"grant_type": "refresh_token", "client_id": "'"${RPA_CLIENT_ID}"'", "refresh_token": "'"${RPA_USER_KEY}"'"}' | jq '.access_token') >> .env`{{execute}}

下記コマンドを実行します。

`source .env`{{execute}}

下記コマンドを実行します。`.env` ファイルに `RPA_RELEASEKEY` の値が反映されているか確認してください。

`echo RPA_RELEASEKEY=$(curl -H "Authorization: Bearer ${RPA_TOKEN}" -H "X-UIPATH-TenantName: ${RPA_TENANT_NAME}" https://platform.uipath.com/${RPA_ACCOUNT_NAME}/${RPA_TENANT_NAME}/odata/Releases | jq '.value[].Key') >> .env`{{execute}}

下記コマンドを実行します。

`node index.js`{{execute}}

### 3-3. 動作確認
これでGoogle Assistantアプリを起動して、「rpaに○○を書いて」と言うとUiPathが起動してメモ帳に書き込まれます。
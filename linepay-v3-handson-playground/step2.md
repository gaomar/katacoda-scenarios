### 2-1. envファイルを編集する
`example/.env` ファイルを開いてください。下記項目を埋めていきます。

|項目|値|
|:--|:--|
|VUE_LINE_PAY_CHANNEL_ID| ステップ1で取得したチャネルID |
|VUE_LINE_PAY_CHANNEL_SECRET| ステップ1で取得したシークレットキー|
|VUE_APP_HOST_NAME| `https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}} |
|VUE_APP_LINE_PAY_FUNCTIONS_URL| `https://[[HOST_SUBDOMAIN]]-9000-[[KATACODA_HOST]].environments.katacoda.com/.netlify/functions/pay`{{copy}}|

### 2-2. プログラムを実行する
下記コマンドをそれぞれ実行してください。

`npm run serve`{{execute T1}}

`npm run lambda`{{execute T2}}

### 2-3. 動作確認
下記URLにアクセスしてください。

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/


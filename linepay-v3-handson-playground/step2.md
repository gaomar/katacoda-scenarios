### 2-1. envファイルを編集する
IDEタブをクリックしてVSCodeを起動します。
`example/.env` ファイルを開いてください。下記項目を埋めていきます。

|項目|値|
|:--|:--|
|VUE_LINE_PAY_CHANNEL_ID| ステップ1で取得したチャネルID |
|VUE_LINE_PAY_CHANNEL_SECRET| ステップ1で取得したシークレットキー|
|VUE_APP_HOST_NAME| `https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}} |
|VUE_APP_LINE_PAY_FUNCTIONS_URL| `https://[[HOST_SUBDOMAIN]]-9000-[[KATACODA_HOST]].environments.katacoda.com/.netlify/functions/pay`{{copy}}|

![s200](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/linepay-v3-handson-playground/images/s200.png)

### 2-2. プログラムを実行する
下記コマンドをそれぞれ実行してください。

■サイトを起動

`npm run serve`{{execute T1}}

■ファンクション起動

```
cd sample

npm run lambda
```{{execute T2}}

### 2-3. 動作確認
下記URLにアクセスしてください。

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

LINE Payのロゴをクリックして、ご自身のLINEアカウントでログインして決済してみてください。

（※実際にはお金は減りませんのでご安心ください）

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/linepay-v3-handson-playground/images/s201.png)
### 4-1. envファイルを編集する
IDEタブをクリックしてVSCodeを起動します。
`example/.env` ファイルを開いてください。下記項目を埋めていきます。

|項目|値|
|:--|:--|
|VUE_APP_API_KEY| ステップ1で取得したAPIキー |
|VUE_APP_API_SECRET| ステップ1で取得したシークレットキー|
|VUE_APP_MERCHANTID|ステップ1で取得したMERCHANT ID|
|VUE_APP_LIFF_ID| ステップ2で取得したLIFF ID |
|VUE_APP_HOST_NAME| `https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}} |
|VUE_APP_PAYPAY_FUNCTIONS_URL| `https://[[HOST_SUBDOMAIN]]-9000-[[KATACODA_HOST]].environments.katacoda.com/.netlify/functions/pay`{{copy}}|

![s200](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-handson-playground/images/s200.png)

### 4-2. プログラムを実行する
下記コマンドをそれぞれ実行してください。

■サイトを起動

`npm run serve`{{execute T1}}

■ファンクション起動

```
cd example

npm run lambda
```{{execute T2}}

### 4-3. PayPayテストアカウント
サンドボックス環境ではテストアカウントを使います。PayPayアプリを開いて、ログインページの左上にあるPayPayのロゴマークを `7回` タップしてください。
すると、下から `開発者モードでログイン` というボタンが表示されます。

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-handson-playground/images/s201.png)

テストアカウントはPayPay for Developersページの `テストユーザー` からお好きなアカウントでログイしてください。

![s202](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-handson-playground/images/s202.png)

### 4-4. 動作確認
決済開始をクリックします。PayPayのロゴをクリックすると自動的にPayPayアプリが起動します。

（※実際にはお金は減りませんのでご安心ください）

![s203](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-handson-playground/images/s203.png)

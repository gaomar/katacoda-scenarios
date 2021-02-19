### 4-1. envファイルを編集する
IDEタブをクリックしてVSCodeを起動します。
`example/.env` ファイルを開いてください。下記項目を埋めていきます。

|項目|値|
|:--|:--|
|VUE_APP_APPID| ステップ1で取得したAPIキー |
|VUE_APP_CERTIFICATE| ステップ1で取得したシークレットキー|
|VUE_APP_LIFF_ID| ステップ2で取得したLIFF ID |
|VUE_APP_GENERATE_TOKEN_API| `https://[[HOST_SUBDOMAIN]]-9000-[[KATACODA_HOST]].environments.katacoda.com/.netlify/functions/rtcToken`{{copy}}|

![s400](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s400.png)

### 4-2. プログラムを実行する
下記コマンドをそれぞれ実行してください。

■サイトを起動

`npm run serve`{{execute T1}}

■ファンクション起動

```
cd example

npm run lambda-serve
```{{execute T2}}

### 4-3. 動作確認
下記URLにアクセスするとLINEでログインを求められます。ログインした後、お好きなルーム名を入力して［入出する］ボタンをクリックします。
［ミュート解除］ボタンをクリックすると音声が共有されます。

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

スマホからもアクセスしてログインしてみましょう。下記URLからQRコードが表示されます。
https://chart.apis.google.com/chart?cht=qr&chs=300x300&chl=https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

### 3-1. envファイルを編集する
IDEタブ①をクリックしてVSCodeを起動します。
`example/.env` ファイル②を開いてください。下記項目を埋めていきます。

|項目|値|
|:--|:--|
|VUE_APP_APPID| ステップ1で取得したAPIキー |
|VUE_APP_CERTIFICATE| ステップ1で取得したシークレットキー|
|VUE_APP_LIFF_ID| ステップ2で取得したLIFF ID |
|VUE_APP_GENERATE_TOKEN_API| `https://[[HOST_SUBDOMAIN]]-9000-[[KATACODA_HOST]].environments.katacoda.com/.netlify/functions/index/rtcToken`{{copy}}|

![s300](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-agora-handson-playground/images/s300.png)

### 3-2. プログラムを実行する
下記コマンドをそれぞれ実行してください。

■サイトを起動

`npm run serve`{{execute T1}}

下記が表示されればOKです。

![s301](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-agora-handson-playground/images/s301.png)

■ファンクション起動

```
cd example

npm run lambda-serve
```{{execute T2}}

下記が表示されればOKです。

![s302](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-agora-handson-playground/images/s302.png)

### 3-3. 動作確認
下記URLにアクセスするとLINEでログイン①を求められます。ログインした後、お好きなルーム名②を入力して［入出する］ボタン③をクリックします。
［ミュート解除］ボタン④をクリックすると音声が共有されます。

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

スマホからもアクセスしてログインしてみましょう。下記QRコードをスマホで読み取ってみてください。

![qr](https://chart.apis.google.com/chart?cht=qr&chs=300x300&chl=https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/)


![s303](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-agora-handson-playground/images/s303.png)
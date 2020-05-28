### 2-1. 新規チャネルを作成する
LINE DeveloperページへアクセスしてLINEログインしてください。
[https://developers.line.biz/ja/](https://developers.line.biz/ja/)

まだプロバイダー設定してない方はお好きな名前でプロバイダー名を設定してください。
![s300](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s300.png)

新規チャネルをクリックします。
![s301](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s301.png)

Messaging APIをクリックします。
![s302](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s302.png)

各種項目を埋めていきます。

|項目|値|
|:--|:--|
|①チャネル名|機械学習Bot|
|②チャネル説明|機械学習Bot|
|③大業種|個人|
|④小業種|個人（その他）|
|⑤メールアドレス|ご自身のメールアドレスを入力|


![s303](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s303.png)

2つチェックを入れて、［作成］ボタンをクリックします。
![s304](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s304.png)

［同意する］ボタンをクリックします。
![s305](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s305.png)

作成された「機械学習Bot」チャネルをクリックします。
![s306](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s306.png)

### 2-2. チャネルシークレットをメモする
下の方にスクロールすると「チャネルシークレット」という部分があるので、その値をメモしておきます。

![s307](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s307.png)

### 2-3. Botと友だちになる
作成したBotと友だちになっておきます。QRコードを読み取って友だちになります。

![s308](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s308.png)

［追加］ボタンをクリックします。
![s309](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s309.png)

### 2-4. チャネルアクセストークンをメモする
下の方にスクロールすると「チャネルアクセストークン」という部分があるので、［発行］ボタンをクリックして、アクセストークンを発行します。発行されたトークンは後ほど使うので、メモしておきます。

![s310](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s310.png)

### 2-5. LINE公式アカウントを設定する
Botの応答メッセージを無効にしたいので設定を行います。［編集］部分をクリックします。

![s312](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s312.png)


詳細設定にある応答メッセージとWebhookの設定を行います。設定したら、［Messaging API設定］をクリックします。

|項目|値|
|:--|:--|
|応答メッセージ| オフ|
|Webhook| オン |

![s313](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s313.png)

### 2-6. WebhookのURLを設定する
下記URLを貼り付けて［保存］ボタンをクリックします。

```
https://[[HOST_SUBDOMAIN]]-1880-[[KATACODA_HOST]].environments.katacoda.com/linebot
```{{copy}}

![s314](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s314.png)

以上でLINE Botの設定は完了です。


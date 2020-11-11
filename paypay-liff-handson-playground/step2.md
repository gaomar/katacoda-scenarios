### 2-1. 新規チャネルを作成する
LINE DeveloperページへアクセスしてLINEログインしてください。

https://developers.line.biz/ja/

まだプロバイダー設定してない方は「新規プロバイダー作成」をクリックします。

![s200](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s200.png)

プロバイダー名はお好きなものを入力して、「作成」ボタンをクリックします。

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s201.png)

「LINEログイン」をクリックします。

![s202](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s202.png)

各種項目を埋めていきます。

|項目|値|
|:--|:--|
|①チャネル名|`PayPay-LIFF`{{copy}}|
|②チャネル説明|`PayPay-LIFF`{{copy}}|
|③アプリタイプ|チェックを2つ入れる|
|④メールアドレス|ご自身のメールアドレスを入力|

![s203](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s203.png)

チェックを入れてから［作成］ボタンをクリックします。
![s204](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s204.png)

### 2-2. LIFF IDを作成する
`LIFF` タブをクリックして、［追加］ボタンをクリックします。

![s206](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s206.png)

アプリ名とサイズを設定します。

|項目|値|
|:--|:--|
|①LIFFアプリ名|`PayPay-LIFF`{{copy}}|
|②サイズ|お好きなものを選択|

![s207](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s207.png)

続いて他の設定も行います。

|項目|値|
|:--|:--|
|③エンドポイントURL|`https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}} <br>こちらのURLを貼り付ける|
|④Scope| `profile` にチェックを入れる|
|⑤ボットリンク機能| `Off` を選択|

![s208](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s208.png)

［追加］ボタンをクリックします。

![s209](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s209.png)

LIFFのIDが生成されるので値をメモしておきます。

![s210](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s210.png)

### 3-1. Messaging APIのチャネルを作成する
LINE Developerのページから新規チャネル作成をクリックします。

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s201.png)

`Messaging API` をクリックします。

![s300](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s300.png)

各種項目を埋めていきます。

|項目|値|
|:--|:--|
|①チャネル名|`PayPay-Bot`{{copy}}|
|②チャネル説明|`PayPay-Bot`{{copy}}|
|③大業種|個人|
|④小業種|個人（その他）|
|⑤メールアドレス|あなたのメールアドレスを入力してください|

![s301](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s301.png)

2つのチェックを入れて、［作成］ボタンをクリックします。

![s402](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s402.png)

［同意する］ボタンをクリックします。

![s403](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s403.png)

### 3-2. リッチメニューを設定する
リッチメニューを設定します。設定は別のページで行うので、 `LINE Official Account Manager ` のリンクをクリックします。

![s302](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s302.png)

［ホーム］- ［リッチメニュー］をクリックして、［作成］ボタンをクリックします。

![s303](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s303.png)

LIFFタイトルと日付を設定します。

|項目|値|
|:--|:--|
|①タイトル|`LIFFメニュー`{{copy}}|
|②表示期間|2020/01/01 00:00 〜 2029/12/31 00:00|

![s406](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s406.png)

［テンプレートを選択］ボタンをクリックします。

![s407](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s407.png)

テンプレートは左下の物を選択して、［選択］ボタンをクリックします。

![s408](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s408.png)

アクションの設定をします。

|項目|値|
|:--|:--|
|①タイプ|リンク|
|②URL|2-2で生成されたLIFFのURLを指定する<br>例）https://liff.line.me/xxxxxxxxxx-xxxxxxxx|
|③アクションラベル|LIFFを開く|

![s409](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s409.png)

### 3-3. 背景画像を作成する
［画像を作成］ボタンをクリックします。

![s410](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s410.png)

メニューからテキストや背景色を設定してそれらしいボタン画像を作成します。
ボタンが出来たら［適用］ボタンをクリックします。

![s304](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s304.png)

画像を保存する必要が特に無いので、［適用］ボタンをクリックします。

![s305](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s305.png)

［保存］ボタンをクリックします。

![s306](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s306.png)

### 3-4. ボットと友だちになる
作ったボットと友だちになりましょう。

LINE Developerのページを開いて、Messaging API設定をクリックします。
そこに表示されているQRコードをLINEアプリから読み取って友だちになります。

![s307](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s307.png)

［追加］ボタンをクリックします。

![s308](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/paypay-liff-handson-playground/images/s308.png)

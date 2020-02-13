### 1-1. 新規チャネルを作成する
LINE DeveloperページへアクセスしてLINEログインしてください。
[https://developers.line.biz/ja/](https://developers.line.biz/ja/)

まだプロバイダー設定してない方はお好きな名前でプロバイダー名を設定してください。
![s200](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s200.png)

新規チャネルをクリックします。
![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s201.png)

LINEログインをクリックします。
![s202](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s202.png)

各種項目を埋めていきます。

|項目|値|
|:--|:--|
|①チャネル名|LIFF-v2-Handson|
|②チャネル説明|LIFF-v2-Handson|
|③アプリタイプ|チェックを2つ入れる|
|④メールアドレス|ご自身のメールアドレスを入力|

![s203](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s203.png)

チェックを入れてから［作成］ボタンをクリックします。
![s204](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s204.png)

［同意する］をクリックします。
![s205](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s205.png)

### 1-2. LIFFのIDを作成する

作成された `LIFF-v2-Handson` のチャネルをクリックします。
![s206](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s206.png)

`LIFF` をクリックして、［追加］ボタンをクリックします。
![s207](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s207.png)

アプリ名とサイズを設定します。

|項目|値|
|:--|:--|
|①LIFFアプリ名|LIFF-v2-Handson|
|②サイズ|Tall|

![s208](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s208.png)

続いて他の設定も行います。

|項目|値|
|:--|:--|
|③エンドポイントURL|`https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}} <br>こちらのURLを貼り付ける|
|④Scope| `chat_message.write` と `profile` にチェックを入れる|
|⑤ボットリンク機能| `On (Normal) ` を選択|

![s209](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s209.png)

［作成］ボタンをクリックします。

![s210](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s210.png)

LIFFのIDが生成されるので、赤枠の値をメモしておきます。

![s211](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s211.png)
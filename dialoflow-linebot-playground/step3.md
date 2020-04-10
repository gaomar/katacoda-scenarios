### 3-1. Intentを作成する

左側メニューの `Intents` の［＋］ボタンをクリックします。Intent名は「BMIIntent」と入力します。測定を開始するための言葉を `Training phrases` に登録します。

![s400](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s400.png)


`Action and parameters` 部分に項目を埋めていきます。

|項目|値|
|:--|:--|
|REQUIRED|チェックを入れる|
|PARAMETER NAME|height|
|ENTITY|@sys.number|
|VALUE|$height|

![s401](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s401.png)

入力したら、［Define prompts］をクリックします。ポップアップが表示されるので、身長を答えてもらえるような言葉を登録します。

```
あなたの身長をcmで教えて下さい
```

![s402](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s402.png)

続いて体重も同様に入力します。

|項目|値|
|:--|:--|
|REQUIRED|チェックを入れる|
|PARAMETER NAME|weight|
|ENTITY|@sys.number|
|VALUE|$weight|
|PROMPTS|続いてあなたの体重をkgで教えて下さい|

このようになればOKです。

![s403](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s403.png)

Fulfillment部分にあるWebhookを有効化にします。

![s404](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s404.png)

### 3-2. コードを入力する
左側メニューの `Fulfillment` をクリックします。Webhook側を `ENABLED` にします。下記URLをコピーしてURL部分に貼り付けてください。

`https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}}

画面下にスクロールして［SAVE］ボタンをクリックします。

![s405](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s405.png)

下記コマンドを実行します。

`node index.js`{{execute}}

### 3-3. 動作確認する
LINEチャット画面で「スタート」と入力すると身長と体重を聞かれます。
値を入力すると、BMIの値が返ってきます。

![s406](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s406.png)
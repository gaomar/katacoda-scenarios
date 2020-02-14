### 4-1. envファイルを更新する
IDEタブをクリックしてVSCodeを開きます。exampleフォルダにある `.env` ファイルを開いてください。これまでにメモしてきたものを反映します。

|項目|値|
|:--|:--|
|CHANNEL_SECRET|1-2で取得したチャネルシークレット|
|CHANNEL_ACCESS_TOKEN|1-4で取得したチャネルトークン|
|SPREADSHEET_URL|3-3で取得したスプレッドシートのURL|

![s400](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/m5stickc-beacon-handson-playground/images/s400.png)

### 4-2. プログラムを実行する
下記をクリックしてプログラムを実行してください

`node index.js`{{execute}}
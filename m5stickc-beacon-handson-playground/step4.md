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

### 4-3. 動作確認する
M5StickCの中央にあるボタンを押下すると line beacon!ONと表示されます。
M5Stackの方は真ん中のBボタンを押下するとビーコンがONになります。
これでしばらく携帯電話を近づけておくと、LINEに通知とスプレッドシートにUUIDが記述されます。

![s401](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/m5stickc-beacon-handson-playground/images/s401.png)
### 4-1. Lambdaレイヤーを追加する
AWS Lambdaに必要なライブラリーを登録します。コンソール画面から `Lambda` と検索してクリックします。

![s400](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s400.png)

下記から `zipファイル` をダウンロードしてください。

[zipファイルダウンロード](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/files/RequestLib.zip)

左側メニューから `Layers` をクリックして、［レイヤーの作成］ボタンをクリックします。

![s401](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s401.png)

レイヤーの名前と説明を入力します。先程ダウンロードしたzipファイルを解答せずにzipファイルを指定します。ランタイムは `Node.js 12.x` を指定します。

右下の［作成］ボタンをクリックします。

![s402](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s402.png)

### 4-2. 関数を作成する
スプレッドシートに着信履歴を残すためのプログラムを作成します。左側メニューから「関数」をクリックして、［関数の作成］ボタンをクリックします。

![s403](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s403.png)

関数名は「AmazonConnectHandson」ランタイムは「Node.js 12.x」を選択して、右下の［関数の作成］ボタンをクリックします。

|項目|値|
|:--|:--|
|①関数名| `AmazonConnectHandson`{{copy}} |
|②ランタイム|Node.js 12.x|


![s404](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s404.png)

関数が作成されたら、Layersをクリックして［レイヤーの追加］ボタンをクリックします。

![s405](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s405.png)

プルダウンメニューから作成したLayer名を指定します。バージョンも同じく選択します。

![s406](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s406.png)

ここで一度［保存］ボタンをクリックします。Layers（１）になっているか確認してください。

![s407](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s407.png)

環境変数を設定します。少し下にスクロールすると「環境変数」カテゴリが表示されるので、［編集］ボタンをクリックします。

![s408](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s408.png)

［環境変数の追加］ボタンをクリックして、キー名と値を入力します。入力したら右下の［保存］ボタンをクリックします。

|項目|値|
|:--|:--|
|キー| `SPREADSHEET_URL`{{copy}}|
|値| 3-3で発行したGASのデプロイURL|

![s409](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s409.png)

関数コード部分に下記コードを貼り付けてください。既存のコードは一度削除してから貼り付けます。右上の［保存］ボタンを忘れずにクリックします。

<pre class="file" data-target="clipboard">
const request = require('request');

const headers = {
  'Content-Type': 'application/json'
};

exports.handler = async (event) => {
    // 発信者番号取得
    const address = event.Details.ContactData.CustomerEndpoint.Address;

    const jsonData =
    {
      'address': address
    };

    const payload = JSON.stringify(jsonData);

    var options = {
        url: process.env.SPREADSHEET_URL,
        method: 'POST',
        headers: headers,
        form: payload
    };

    const my_response = {
        statusCode: 200,
        body: JSON.stringify('true')
    };

    return new Promise(function (resolve, reject) {
      request(options, function (error, response, body) {
        if (!error) {
          resolve(my_response);
        } else {
          console.log('error: ' + response + body);
          resolve(my_response);
        }
      });
    });
};
</pre>

![s410](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s410.png)

### 4-3. Amazon ConnectにLambdaを適用する
作成したLambda関数をAmazon Connectに適用します。Amazon Connectの左側メニューから［問い合わせフロー］をクリックして、下の方にスクロールすると「AWS Lambda」のカテゴリが出てきます。プルダウンメニューから作成した関数名を指定してください。［+ Lambda関数の追加］ボタンをクリックします。

![s411](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s411.png)

問い合わせフローの切断につながっている部分２箇所を削除します。

![s412](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s412.png)

統合カテゴリにある「AWS Lambda関数を呼び出す」ブロックをドラッグアンドドロップします。

![s413](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s413.png)

2つある「プロンプトの再生」ブロックを「AWS Lambda関数を呼び出す」ブロックにつなげます。

![s414](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s414.png)

作成したAWS Lambdaの関数をプルダウンメニューから選択して、［Save］ボタンをクリックします。

![s415](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s415.png)

切断ブロックにそれぞれつないで、［公開］ボタンをクリックします。

![s416](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s416.png)

これで電話をかけて最後まで聞き終わると、着信履歴がスプレッドシートに記載されます。

![s417](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s417.png)

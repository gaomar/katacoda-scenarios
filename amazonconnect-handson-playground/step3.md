### 3-1. スプレッドシート作成
着信履歴情報をスプレッドシートに記録していきます。下記URLからスプレッドシートを新規作成します。

[https://sheets.google.com/create](https://sheets.google.com/create)

ファイル名を適当に決めて、A1とB1にそれぞれヘッダー名を入力しておきます。

![s300](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s300.png)

### 3-2. スクリプトを記述する

［ツール］- [スクリプトエディタ]をクリックします。

![s301](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s301.png)

既に書かれているコードは削除して、下記コードを記載してください。

<pre class="file" data-target="clipboard">
function addAddress(sheet, address) {
  sheet.insertRows(2,1);
  sheet.getRange(2, 1).setValue(address);
  sheet.getRange(2, 2).setValue(new Date());

}

function doPost(e) {
  var sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName('シート1');
  var params = JSON.parse(e.postData.getDataAsString());
  var address = params.address;
  
  // データ追加
  addAddress(sheet, address);
  
}
</pre>

![s302](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s302.png)

### 3-3. スクリプトを公開する
[公開] - [ウェブアプリケーションとして導入...]をクリックします。

![s303](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s303.png)

プロジェクト名は「AmazonConnect着信履歴情報」と入力します。

<pre class="file" data-target="clipboard">
AmazonConnect着信履歴情報
</pre>


![s304](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s304.png)

アクセス対象者を `Anyone, even, anonymous` をプルダウンメニューから選択し、［デプロイ］ボタンをクリックします。

![s305](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s305.png)

許可を確認をクリック

![s306](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s306.png)

［AmazonConnect着信履歴情報（安全ではないページ）に移動］をクリック

![s307](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s307.png)

ご自身のGoogleアカウントでログインしてから、許可をクリックします。

![s308](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s308.png)

デプロイされたURLをメモしておきます。

![s309](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s309.png)

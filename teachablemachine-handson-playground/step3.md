### 3-1. envファイルを更新
IDEタブをクリックします。VSCodeが表示されるので、左側のツリーから exampleフォルダにある `.env` ファイルを開いてください。

|項目|値|
|:--|:--|
|CHANNEL_SECRET|2-2で発行したチャネルシークレットの値を貼り付ける|
|CHANNEL_ACCESS_TOKEN|2-4で発行したチャネルアクセストークンの値を貼り付ける|
|BASE_URL|1-7で発行したteachablemachineの学習モデルURLを貼り付ける|
|DL_URL|https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com <br>こちらのURLを貼り付ける|

![s400](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s400.png)

### 3-2. モジュールを編集する
下記ファイルを編集します。理由はこのまま動作実行するとエラーになってしまうからです。

詳細はこちら：
[https://github.com/tr7zw/teachablemachine-node-example](https://github.com/tr7zw/teachablemachine-node-example)

```
// 47-52行目を削除（コメントアウト）する
node_modules/@teachablemachine/image/dist/utils/canvas.js
```

![s401](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s401.png)

### 3-3. プログラムを実行する
下記コマンドを実行（クリックしてください）

`node index.js`{{execute}}

### 3-4. 動作確認
LINEアプリから友だちになったLINE Botを開いて、学習したものを投稿してみましょう。判定結果が返ってきます。色んなものを学習させて結果が返ってくることを確認しましょう！

![s402](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s402.png)

### まとめ
GUI画面でポチポチするだけで簡単に学習モデルデータが作成できました。新たなClassを学習させたらエクスポートして、再度 `Upload my model` して、 `node index.js` コマンドを実行してみましょう。

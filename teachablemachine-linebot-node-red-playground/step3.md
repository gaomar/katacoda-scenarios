### 3-1. ユーザー名とパスワードをメモする
KatacodaのTerminalに表示されている `ユーザ名` と `パスワード` をメモしておいてください。

![s300](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s300.png)


下記コマンドを実行するとNode-REDが起動できます。

`node-red`{{execute}}

### 3-2. Node-REDにアクセスする
下記URLにアクセスしてNode-REDページを開きましょう。

https://[[HOST_SUBDOMAIN]]-1880-[[KATACODA_HOST]].environments.katacoda.com/

先程メモしたユーザ名とパスワードでログインしてください。

![s301](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s301.png)


### 3-3. Teachable Machineノードを追加する
右上のメニューから `パレットの管理` をクリックします。

![s302](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s302.png)

「ノードを追加」タブをクリックして、検索窓に `teachable` で絞り込みます。 ［ノードを追加］ボタンをクリックして `node-red-contrib-teachable-machine` を追加してください。

![s303](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s303.png)


### 3-4. LINEのMessaging APIノードを追加する
続いてLINEにメッセージを送るノードを追加します。検索窓に `line-messaging-api` と入力して絞り込みます。 ［ノードを追加］ボタンをクリックして `node-red-contrib-line-messaging-api` を追加してください。

![s304](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s304.png)

### 3-5. http in ノードを設定する
ネットワークカテゴリにある　`http in` ノードをドラッグ&ドロップしてください。ノードをダブルクリックして、プロパティ画面を開き、下記項目を設定してください。設定したら完了ボタンを押して閉じてください。

|項目|値|
|:--|:--|
|メソッド| POST|
|URL| `/linebot`{{copy}} |

![s305](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s305.png)

### 3-6. function ノードを設定する
機能カテゴリにある `function` ノードをドラッグ&ドロップします。httpノードと functionノードを線で繋いでから、ダブルクリックでプロパティ画面を開いてください。コード部分を編集します。

下記コードをコピペしてください。

<pre class="file" data-target="clipboard">
const messageID = msg.payload.events[0].message.id;
const replyToken = msg.payload.events[0].replyToken;

msg.messageID = messageID;
msg.replyToken = replyToken;

return msg;
</pre>

![s306](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s306.png)

### 3-7. http request ノードを設定する
ネットワークカテゴリにある `http request` ノードをドラッグ&ドロップします。 functionノードと http requestノードを線で繋ぎます。プロパティ画面の設定は下記項目を設定します。

|項目|値|
|:--|:--|
|URL| `https://api.line.me/v2/bot/message/{{{messageID}}}/content`{{copy}} |
|認証を使用| チェック入れる|
|種別|Bearer認証|
|トークン| step2-4で発行したアクセストークンを貼り付ける|
|出力形式|バイナリバッファ|

![s307](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s307.png)

### 3-8. Teachable Machine ノードを設定をする
分析カテゴリにある `teachable machine` ノードをドラッグ&ドロップします。 http requestノードと teachable machineノードを線で繋ぎます。プロパティは下記項目を設定します。

|項目|値|
|:--|:--|
|Url| Step1-7でメモしたTeachable MachineモデルのURLを貼り付ける <br/> https://teachablemachine.withgoogle.com/models/xxxxxxxxxx/ |
|Image| チェックを入れる |

![s308](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s308.png)


### 3-9. 結果を取得する
機能カテゴリにある `function` ノードをドラッグ&ドロップして、Teachable Machineノードと繋ぎます。

下記コードをコピペしてください。

<pre class="file" data-target="clipboard">
const className = msg.payload[0].class;
msg.payload = {};
msg.payload.events = [
    {
        "type": "message",
        "replyToken": msg.replyToken,
        "message": {
            "type": "text",
            "text": `これは、「${className}」かな？`
        }
    }
];
return msg;
</pre>

![s309](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s309.png)

### 3-10. LINEに返す
LINEカテゴリにある `ReplayMessage` ノードをドラッグ&ドロップして、 functionノードと繋ぎます。プロパティは下記設定を行います。

|項目|値|
|:--|:--|
|Secret| Step2-2の値を貼り付ける |
|Access Token| Step2-4で発行した値を貼り付ける|

![s310](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s310.png)

### 3-11. デプロイする
画面上部にある［デプロイ］ボタンをクリックしてデプロイしてください。

![s311](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s311.png)

### 3-12. 動作確認
LINEアプリから友だちになったLINE Botを開いて、学習したものを投稿してみましょう。判定結果が返ってきます。色んなものを学習させて結果が返ってくることを確認しましょう！

![s402](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s402.png)

Node-RED画面にも結果が可視化される。

![s312](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-linebot-node-red-playground/images/s312.png)

### まとめ
GUI画面でポチポチするだけで簡単に学習モデルデータが作成できました。新たなClassを学習させたらエクスポートして、再度 `Upload my model` して、 発行されたTeachable MachineのモデルURLを貼り付けて再度デプロイしてみてください。


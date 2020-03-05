### 1-1. Amazon Connect電話番号取得

すでにAmazon Connectの電話番号を取得している前提で開始します。
まだ未取得な方はこちらから番号を取得しておいてください。

[https://ac-handson-00.netlify.com](https://ac-handson-00.netlify.com)

### 1-2. 問い合わせフローの作成
AWSにログインして、サービスから「Amazon Connect」を検索して、出てきたものをクリックします。

![s000](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s000.png)

作成したインスタンスエイリアスをクリックします。

![s001](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s001.png)

［管理者としてログイン］をクリックします。

![s002](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s002.png)

左側メニューのルーティングから「問い合わせフロー」をクリックします。

![s100](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s100.png)

［問い合わせフローの作成］をクリックします。

![s101](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s101.png)

名前を「AmazonConnectHandson」と入力します。下記をコピペしてご利用ください。

<pre class="file" data-target="clipboard">
AmazonConnectHandson
</pre>

![s102](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s102.png)

設定カテゴリにある「音声の設定」ブロックをドラッグ＆ドロップして、ドロップしたブロックをクリックします。

![s103](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s103.png)

言語は「日本語」でお好きな音声を選択してください。

![s104](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s104.png)

エントリポイントと音声の設定ブロックを繋げます。

![s105](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s105.png)

操作カテゴリにある「プロンプトの再生」ブロックをドラッグ＆ドロップして、線をつないだあと、ドロップしたブロックをクリックします。

![s106](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s106.png)

電話がかかってきたときに応答するメッセージを登録します。お好きなメッセージを登録してください。面倒な方は下記をコピペしてください。最後に右下の ［Save］ボタンをクリックしてください。

<pre class="file" data-target="clipboard">
お電話ありがとうございます。アイエンターでございます。アマゾンコネクトで応答しました。お電話ありがとうございました。
</pre>

![s107](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s107.png)

このままでは電話がつながったままになってしまうので、電話を切るブロックを追加します。
終了/転送カテゴリにある「切断/ハングアップ」ブロックをドラッグアンドドロップして、線で結びます。

![s108](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s108.png)

［公開］ボタンをクリックします。

![s109](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s109.png)

続いて表示されるポップアップも［公開］ボタンをクリックします。

![s110](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s110.png)

### 1-3. 電話番号に紐付ける
作成した問い合わせフローを電話番号に紐付けます。左側メニューにある［電話番号］をクリックします。

![s111](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s111.png)

発行された電話番号をクリックします。

![s112](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s112.png)

作成した問い合わせフロー名をプルダウンメニューから指定します。忘れずに［保存］ボタンをクリックします。

![s113](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s113.png)

これで電話をかけると、Amazon Connectの問い合わせフローが反応して設定したメッセージを発話します。

### 1-4. SSMLに対応する
テキストの読み上げはAmazon Pollyを使用しているので、SSML（Speech Synthesis Markup Language）が利用できます。SSMLとは発音、ボリューム、抑揚などさまざまな要素を自由にカスタマイズすることができます。

使えるSSMLタグは下記を参照してください。
[https://docs.aws.amazon.com/ja_jp/polly/latest/dg/supportedtags.html](https://docs.aws.amazon.com/ja_jp/polly/latest/dg/supportedtags.html)

問い合わせフローを開いて、プロンプトの再生ブロックをクリックして、応答メッセージをSSMLに変更してみましょう。

この時「解釈する」のプルダウンメニューから `SSML` に変更してください。

```html
<speak>
<break time="2s"/>
お電話ありがとうございます。アイエンターでございます。<prosody rate="x-slow">ゆっくり話します。お電話ありがとうございました。</prosody>
</speak>
```{{copy}}

![s114](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s114.png)

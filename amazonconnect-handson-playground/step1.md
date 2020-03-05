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

設定カテゴリにある「音声の設定」ブロックをドラッグアンドドロップして、ドロップしたブロックをクリックします。

![s103](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s103.png)

言語は「日本語」でお好きな音声を選択してください。

![s104](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s104.png)

エントリポイントと音声の設定ブロックを繋げます。

![s105](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s105.png)

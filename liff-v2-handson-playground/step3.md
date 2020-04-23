### 3-1. Messaging APIのチャネルを作成する
LINE Developerのページから新規チャネル作成をクリックします。

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s201.png)

今度は、真ん中の `Messaging API` をクリックします。

![s400](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s400.png)

それぞれの項目を設定します。

各種項目を埋めていきます。

|項目|値|
|:--|:--|
|①チャネル名|LIFF-v2-Bot|
|②チャネル説明|LIFF-v2-Bot|
|③大業種|個人|
|④小業種|個人（その他）|
|⑤メールアドレス|あなたのメールアドレスを入力してください|

![s401](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s401.png)

2つのチェックを入れて、［作成］ボタンをクリックします。

![s402](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s402.png)

［同意する］ボタンをクリックします。

![s403](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s403.png)

### 3-2. リッチメニューを設定する
リッチメニューを設定します。設定は別のページで行うので、 `LINE Official Account Manager ` のリンクをクリックします。

![s404](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s404.png)

［ホーム］- ［リッチメニュー］をクリックして、［作成］ボタンをクリックします。

![s405](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s405.png)

LIFFタイトルと日付を設定します。

|項目|値|
|:--|:--|
|①タイトル|LIFFメニュー|
|②表示期間|2020/01/01 00:00 〜 2029/12/31 00:00|

![s406](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s406.png)

［テンプレートを選択］ボタンをクリックします。

![s407](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s407.png)

テンプレートは左下の物を選択して、［選択］ボタンをクリックします。

![s408](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s408.png)

アクションの設定をします。

|項目|値|
|:--|:--|
|①タイプ|リンク|
|②URL|1-2で生成されたLIFFのURLを指定する<br>例）https://liff.line.me/xxxxxxxxxx-xxxxxxxx|
|③アクションラベル|LIFFを開く|

![s409](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s409.png)

### 3-3. 背景画像を作成する
［画像を作成］ボタンをクリックします。

![s410](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s410.png)

メニューからテキストや背景色を設定してそれらしいボタン画像を作成します。
ボタンが出来たら［適用］ボタンをクリックします。

![s411](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s411.png)

画像を保存する必要が特に無いので、［適用］ボタンをクリックします。

![s412](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s412.png)

［保存］ボタンをクリックします。

![s413](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s413.png)

### 3-4. 応答設定する
ボットの応答を設定します。［設定］- ［応答設定］にある応答メッセージを「オフ」にしてください。

![s414](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s414.png)

### 3-5. ボットと友だちになる
作ったボットと友だちになりましょう。

LINE Developerのページを開いて、Messaging API設定をクリックします。
そこに表示されているQRコードをLINEアプリから読み取って友だちになります。

![s415](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s415.png)

［追加］ボタンをクリックします。

![s416](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s416.png)

### 3-6. 動作確認する
ボット画面を開いたら、［LIFFを開く］メニューがあるのでタップします。
権限を許可してください。

![s417](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s417.png)

PCブラウザから押せなくなっていた［LINEに送る］ボタンが押せるようになっているので、ボタンをタップします。タップするとLINEにあなたのアイコン画像が投稿されます。

![s418](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s418.png)

### 3-7. 自動でLIFFウィンドウを閉じる
プログラムコードを少し改変してみましょう。src/views/Login.vueファイルを開きます。
116行目と123行目の2箇所コメントアウトしてコードを有効化します。

`liff.closeWindow()` が実行されると自動的にLIFFウィンドウが閉じるようになります。
実際に動かすと3秒後にLIFFウィンドウが自動的に閉じる動きになります。

```javascript
///*  ← コメント解除(116行目)
        // 自動的に閉じる
        setTimeout(()=> {
          liff.closeWindow()
        },
          this.snackbarTimeout
        )
//*/  ← コメント解除（123行目）
```

![s419](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s419.png)

編集が終わったら直ぐにVue.jsが反映されるので、LIFFを開くをタップして動作確認してみてください。

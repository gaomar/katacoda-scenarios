### 4-1. シェア機能とは
2020年3月3日にShare Target Pickerという機能がリリースされました。

[https://engineering.linecorp.com/ja/blog/liff-share-target-picker/](https://engineering.linecorp.com/ja/blog/liff-share-target-picker/)

これはLIFF上から送信先を選んで任意のメッセージを送信することができる機能です。

### 4-2. シェア機能を有効化する
シェア機能を有効化する設定を行います。 `LIFF-v2-Handson` チャネルのLIFFタブにある「シェアターゲットピッカー」を有効化します。

![s500](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s500.png)

情報利用に関するお願いを下までスクロールして同意するにチェックを付けてください。「有効化」ボタンが押せるようになります。［有効化］ボタンをクリックします。

![s501](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s501.png)

### 4-3. プログラムを修正する
プログラムコードを少し改変してみましょう。src/views/Login.vueファイルを開きます。
18行目と24行目の2箇所コメントアウトしてコードを有効化します。

```javascript
<!--   ← 削除（18行目）
      <v-flex mb-4 xs12>
        <div class="ma-4">
          <v-btn large color="success" @click="shareLINE">LINEにシェア</v-btn>
        </div>
      </v-flex>
-->   ← 削除（24行目）
```

![s502](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s502.png)

### 4-4. 動作確認する
これでLIFFを再度表示すると、「LINEにシェア」ボタンが追加されています。ボタンをクリックすると、送信したい人のリストが表示されます。［シェア］ボタンをクリックすると、アイコン画像がシェアされます。
![s503](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/liff-v2-handson-playground/images/s503.png)

LINEログインからLINEメッセージ送信、LINEシェア機能までを行いました。LIFFを駆使して面白いアプリを作ってみましょう！


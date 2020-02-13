### 1-1. 新規プロジェクトを作成する
下記URLにアクセスして、 `Get Started` ボタンをクリックします。

[https://teachablemachine.withgoogle.com/](https://teachablemachine.withgoogle.com/)

![s100](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s100.png)

`Image Project` をクリックします。他にも音声を学習させたり、骨格を学習させるプロジェクトもあります。

![s101](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s101.png)

### 1-2. 各種説明
学習画面に遷移しました。画面はとてもシンプルで左側から学習させたいモデルを登録する箇所、実際にモデルを学習する箇所、最後に学習したものを評価する箇所があります。

![s102](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s102.png)

### 1-3. Classを登録する
学習したいものを準備してください。Class名を学習させたい名前に変えます。今回は自分を学習させたいので、Class名を「がおまる」としました。Webcamボタンをクリックして学習する準備をします。

![s103](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s103.png)

### 1-4. 学習データを登録する
Webカメラが無いPCをお持ちの方はUploadでもデータを登録することが可能です。今回はWebカメラがある前提です。

`Hold to Record` ボタンを押しっぱなしにすることで学習データを作成することが可能です。Webカメラに映ったものをどんどんと記録していきます。首を傾けたり、様々な角度を試したりして学習データを溜め込んでいきます。

![s104](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s104.png)

### 1-5. 他のデータも登録する
Classが1つだけだと学習させることができませんので、近くにあったボールペンを学習させてみました。他にも身近にあるものを学習させてみましょう。複数登録できたら、 `Train Model` ボタンをクリックします。

![s105](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s105.png)

`Train Model` ボタンをクリックすると、学習がスタートします。バーが端まで到達すると学習完了します。

![s106](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s106.png)

### 1-6.動作確認する
学習が終わると、プレビュー画面で結果を確認することができます。リアルタイムでカメラに写ったものを判定します。

![s107](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s107.png)

### 1-7. 学習モデルをエクスポートする
学習したモデルを他のシステムでも使えます。右上にある `Export Model` ボタンをクリックします。

![s108](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s108.png)

ポップアップが表示されるので、「Tensorflow.js」タブをクリックして、その右側にある `Upload my model` をクリックします。

アップロードが完了するとURLが発行されるので［Copy］ボタンをクリックしてメモしておきます。

![s109](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/teachablemachine-handson-playground/images/s109.png)

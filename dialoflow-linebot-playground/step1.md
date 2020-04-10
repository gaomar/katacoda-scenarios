### 1-1. Agentを作成する

[https://dialogflow.com/](https://dialogflow.com/) にアクセスしてください。
［Sign up for free］ボタンをクリックします。お持ちのGoogleアカウントでログインしてください。

![s100](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s100.png)

初めてDialogflowをお使いになる方は利用許可してください。

![s101](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s101.png)

Terms of Service部分のチェックを入れてから［ACCEPT］ボタンをクリックします。

![s102](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s102.png)

［CREATE AGENT］ボタンをクリックします。

![s103](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s103.png)

`Parrot` と入力し、デフォルト言語を `Japanese - ja` に選択してから［CREATE］ボタンをクリックします。

![s200](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s200.png)

### 1-2. MainIntentを作成する
左側メニューの `Intents` の［＋］ボタンをクリックします。Intent名は「MainIntent」と入力します。

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s201.png)

Positive
: Training phrasesの `ADD TRAINING PHRASES` 部分をクリックします。
![s202](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s202.png)

Training phrasesに `any` と入力して、［Enter］キーで確定させます。

![s203](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s203.png)

`any` の単語をマウスでダブルクリックするとポップアップメニューが表示されます。
その中にある `@sys.any` を選択します。

![s204](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s204.png)

警告ダイアログが表示されるので、OKをクリックします。
この警告は非推奨な使い方だけど、問題ないかの確認ダイアログです。

![s205](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s205.png)

最終的にこのようになればOKです。

![s206](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s206.png)

ResponsesのText Responseに `$any` と入力してください。
この `$any` に入力した文字列が入ってきます。

![s209](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s209.png)

画面右上の［SAVE］ボタンをクリックします。

![s207](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s207.png)

### 1-3. 動作確認
右側に `Try it now` という所にオウム返ししてほしい言葉を入力します。
入力した文字が下に表示されます。

![s208](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialogflow-linebot-playground/images/s208.png)
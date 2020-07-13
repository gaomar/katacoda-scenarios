### 2-1. Googleの権限を許可しておく
下記URLにアクセスしてお持ちのGoogleアカウントでログインしてください。
https://myaccount.google.com/activitycontrols

アクティビティ管理にある「ウェブとアプリのアクティビティ」を有効化にして、その中にある2箇所のチェックをONにしておきます。

![s100](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/154355/f2eca4ab-649a-0362-9c21-39b2914458d8.png)

### 2-2. 新規プロジェクトを作成
下記URLにアクセスして、［New Project］ボタンをクリックします。
https://console.actions.google.com/

![s101](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/154355/25f11e20-3880-ae81-aa6c-39cb9886d0af.png)

プロジェクト名を入力します。お好きなプロジェクト名を入力してください。今回は `Hello` としました。言語とリージョン国はそれぞれ日本を選択します。
［Create project］ ボタンをクリックします。

![s102](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s102.png)

［Custom］ を選択して、［Next］ボタンをクリックします。

![s103](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s103.png)

［Blank project］ を選択して、［Start building］ボタンをクリックします。

![s104](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s104.png)

### 2-3. 簡単なアクションを作成する
起動して「こんにちは！」と言うだけのアクションを作ります。
左側メニューの `Main invocation` をクリックします。 `Send prompts` にチェックを入れてからYAMLファイルの `speech` 部分に「こんにちは！」と入力します。入力後に［Save］ボタンをクリックしてください。

![s105](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s105.png)

### 2-4. シミュレーターで動作確認する
シミュレーターで動作確認してみます。 `Test`タブをクリックしてシミュレーター画面へ遷移します。「テスト用アプリにつないで」をクリックすると起動できます。起動したら「こんにちは！」と画面に表示されます。

![s106](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s106.png)

### 2-5. Sceneを追加する
Actions Builderになってから `Scene` という概念が登場しました。`Scene` を定義して会話の流れを構築していきます。左側メニューから `Main invocation` をクリックして画面右下にある `Transition` のプルダウンを押下してから新しいScene `Parrot` を追加します。追加したら、［Save］をクリックします。今回作成するのは言った言葉をそのまま返す「オウム返し」アクションを作ります。

![s107](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s107.png)

### 2-6. Typeを追加する
Dialogflowで言う `Slot` を追加します。今回はユーザーが言った言葉そのままを取得します。左側メニューにある `Types` メニューを展開して、［＋］をクリックします。 Type名 `any` を追加します。追加されたら、サポートするタイプから「Free form text」を選択します。これで言った言葉をそのまま取得することができます。右上の［Save］をクリックします。

![s108](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s108.png)

### 2-7. Parrotシーンを編集する
左側メニューから `Parrot` シーンをクリックします。 Slot fillingにある［＋］をクリックして対象のSlotを設定します。先程追加したType `any` をSlotに設定してください。
必須項目なので、「This slot is required」部分にチェックを入れます。「Send prompts」を有効化にして、YAMLファイルに「何かしゃべって！」と入力します。編集したら右上の［Save］をクリックします。

![s109](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s109.png)

`Condition` カテゴリにある「if scene.slots.status == "FINAL"」をクリックします。「Send prompts」を有効化にして、YAMLファイルに下記をコピペして、ユーザーがしゃべった内容を発話させます。Transionカテゴリで `End conversation` を選択して会話を終了させます。

<pre class="file" data-target="clipboard">
「$session.params.any」と言ったね！
</pre>

![s110](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s110.png)

### 2-8. シミュレーターで動作確認する
シミュレーターで動作確認をします。 `Test` タブをクリックして、「テスト用アプリにつないで」をクリックします。「何かしゃべって！」と言われるので、オウム返ししてほしい言葉を入力します。すると、入力した言葉がそのまま返ってくるようになります。

![s111](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s111.png)

### 2-9. Againシーンを追加する
今のままではオウム返しを繰り返し行うことができません。再度オウム返しするために、 `Again` シーンを追加します。 Parrotシーンの Transitionに `Again` シーンを追加して、シーンクリックしてください。

![s112](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s112.png)

On enterカテゴリにある［＋］をクリックします。「Send prompts」を有効化にして、YAMLファイルに再度実行するための言葉を入力します。 `suggestions` に選択肢の候補を画面上に出力することができます。

<pre class="file" data-target="clipboard">
candidates:
  - first_simple:
      variants:
        - speech: もう一度やりますか？
    suggestions:
      - title: はい
      - title: いいえ
</pre>

![s113](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s113.png)

### 2-10. YesIntentを追加する
現状だと、「はい」「いいえ」を選んでも何も反応することができません。左側メニューのIntentsカテゴリにある［+］をクリックして、 `YesIntent` と `NoIntent` を追加します。追加した `YesIntent` をクリックして、「はい」に該当する言葉を数種類登録します。

![s114](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s114.png)

### 2-11. NoIntentを設定する
同様に「いいえ」に該当する言葉を数種類登録します。これで、「はい」「いいえ」に反応させることができました。

![s115](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s115.png)

### 2-12. Againシーンを編集する
左側メニューから「Again」シーンを選択して、「Custom intent handling」カテゴリにある［＋］をクリックします。先程追加した `YesIntent` をプルダウンから選択します。Transitionにもう一度オウム返しを行うための `Parrot` シーンを設定します。

![s116](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s116.png)

同様に `NoIntent` を設定します。Transitionにはアクションを終了させたいので、 `End conversation` を選択します。

![s117](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s117.png)

これでシミュレーターを動かすと「はい」「いいえ」の候補が画面上に表示されるようになります。「はい」をクリックすると、再度オウム返しすることができます。「いいえ」をクリックするとそのままアクションが終了します。

![s118](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-actionsbuilder-handson-playground/images/s118.png)

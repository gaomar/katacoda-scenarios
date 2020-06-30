### 2-1. Agentを作成する

[https://dialogflow.cloud.google.com/](https://dialogflow.cloud.google.com/) にアクセスしてください。
［Sign up for free］ボタンをクリックします。お持ちのGoogleアカウントでログインしてください。

![s100](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s100.png)

初めてDialogflowをお使いになる方は利用許可してください。

![s101](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s101.png)

Terms of Service部分のチェックを入れてから［ACCEPT］ボタンをクリックします。

![s102](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s102.png)

［CREATE AGENT］ボタンをクリックします。

![s103](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/dialoflow-linebot-playground/images/s103.png)

`HelloDeno` と入力し、デフォルト言語を `Japanese - ja` に選択してから［CREATE］ボタンをクリックします。

![s200](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflow-handson-playground/images/s200.png)

### 2-2. オウム返しをしよう
`Default Fallback Intent` をクリックします。

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflow-handson-playground/images/s201.png)

 `Fulfillment` カテゴリにある 「Enable webhook call for this intent」を有効化にします。
これで応答をWebhook経由で返すことができます。

![s202](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflow-handson-playground/images/s202.png)

左側メニューの `Fulfillment` をクリックします。Webhookカテゴリを有効化にします。（※2つあるので、上側のWebhookを有効化にします）
Webhook URLは下記URLを貼り付けてください。

`https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}}

![s203](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflow-handson-playground/images/s203.png)

`hello.ts` を開いて、下記プログラムをコピペしてください。

<pre class="file" data-target="clipboard">
import { Application, Context } from "https://deno.land/x/abc@v1.0.0-rc10/mod.ts";
const app = new Application();

app.post('/', async (ctx: Context) => {
    const {queryResult} = await (ctx.body());

    let js = {
            fulfillmentText: `Denoから「${queryResult.queryText}」`
    }

    await ctx.json(js);

});

// ポート開く
app.start({port: 3000});
</pre>

下記コマンドを実行します。

`deno run --allow-net --allow-read hello.js`{{execute}}

画面右側の `Try it now` 部分に好きな言葉を入力してください。
すると `Denoから「XXXXXX」` と入力した言葉が返ってきます。

![s204](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflow-handson-playground/images/s204.png)

### 2-3. 特定の言葉に反応させよう
新規Intent作成して特定の言葉に反応するAPIも作成しましょう。左側メニューの `Intents` にある［＋］ボタンをクリックしてください。Intent名は `MorningIntent` と入力します。こちらはスペルミスに気をつけてください。 Training phrasesカテゴリ部分に「おはよう」と入力して Enterキーを押して確定してください。
Fulfillmentカテゴリにある `Enable webhook call for this intent` を有効化にしておきます。
設定できたら右上にある［SAVE］をクリックします。

![s205](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflow-handson-playground/images/s205.png)

次にプログラムを編集します。すでに書いているプログラムを消してから、下記プログラムをhello.tsにコピペしてください。

<pre class="file" data-target="clipboard">
import { Application, Context } from "https://deno.land/x/abc@v1.0.0-rc10/mod.ts";
const app = new Application();

app.post('/', async (ctx: Context) => {
    const {queryResult} = await (ctx.body());

    // Intent名取得
    const displayName = queryResult.intent.displayName;
    let js = {};

    // MorningIntentかどうか判別
    if (displayName === 'MorningIntent') {
        js = {
            fulfillmentText: `Denoからおはようございます！`
        };
    } else {
        js = {
            fulfillmentText: `Denoから「${queryResult.queryText}」`
        };
    }
    await ctx.json(js)
})

// ポート開く
app.start({port: 3000})
</pre>

下記コマンドで一度プログラムを止めておこう

<kbd>Ctrl</kbd>+<kbd>C</kbd>
`echo "プログラム停止"`{{execute interrupt}}

再度コマンドを実行します。

`deno run --allow-net --allow-read hello.js`{{execute}}

<pre class="file" data-target="clipboard">
import { Application, Context } from "https://deno.land/x/abc@v1.0.0-rc10/mod.ts"
const app = new Application()

app.post('/', async (ctx: Context) => {
    const {queryResult} = await (ctx.body())
    const displayName = queryResult.intent.displayName
    let js = {}

    if (displayName === 'MorningIntent') {
        js = {
            fulfillmentText: `Denoからおはようございます！`
        }
    } else if (displayName === 'NameIntent') {
        js = {
            fulfillmentText: `あなたの名前は「${queryResult.parameters.name}」ですね！`
        }
    } else {
        js = {
            fulfillmentText: `Denoから「${queryResult.queryText}」`
        }    
    }
    await ctx.json(js)
})

// ポート開く
app.start({port: 3000})
</pre>


下記URLにアクセス

https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/

下記コマンドで一度プログラムを止めておこう

<kbd>Ctrl</kbd>+<kbd>C</kbd>
`echo "プログラム停止"`{{execute interrupt}}
### 1-1. Agentを作成する

[https://dialogflow.com/](https://dialogflow.com/) にアクセスしてください。
［Sign up for free］ボタンをクリックします。お持ちのGoogleアカウントでログインしてください。

![s100](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflowmessenger-playground/images/s100.png)

初めてDialogflowをお使いになる方は利用許可してください。

![s101](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflowmessenger-playground/images/s101.png)

Terms of Service部分のチェックを入れてから［ACCEPT］ボタンをクリックします。

![s102](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflowmessenger-playground/images/s102.png)

［CREATE AGENT］ボタンをクリックします。

![s103](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflowmessenger-playground/images/s103.png)

`HelloDialogflowMessenger` と入力し、デフォルト言語を Japanese - ja に選択してから［CREATE］ボタンをクリックします。

![s104](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflowmessenger-playground/images/s104.png)

### 1-2. Intentの設定

`Default Fallback Intent` をクリックします。

![s105](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflowmessenger-playground/images/s105.png)

`Enable webhook call for this intent` のチェックを有効化にします。これでWebhookが有効化になりました。

![s106](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflowmessenger-playground/images/s106.png)

### 1-3. Fulfillmentの設定

左側メニューから `Fulfillment` をクリックして、Webhookを有効化にします。2箇所あるので、上の方を有効化にします。

こちらのURLを貼り付けます。

`https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}}

貼り付けたら［SAVE］ボタンをクリックします。

![s107](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflowmessenger-playground/images/s107.png)

### 1-4. Dialogflow Messengerの設定
左側メニューから `Integrations` をクリックして、Dialogflow Messengerを有効化にします。

![s108](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflowmessenger-playground/images/s108.png)

ポップアップが表示されるので、`agent-id` をメモしておきます。

![s109](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflowmessenger-playground/images/s109.png)

これでDialogflow Messengerの準備は完了しました。
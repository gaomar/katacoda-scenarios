### 2-1. IFTTTの設定を行う

下記URLにアクセス

[https://ifttt.com/create/](https://ifttt.com/create/)

`This` をクリック

![s200](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s200.png)

検索窓から `Google Assistant` を検索してクリック

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s201.png)

`Say a phrase with a text ingredient` をクリック

![s202](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s202.png)

下記をコピペして `What do you want to say?` 部分に貼り付ける

`rpaに $ と書いて`{{copy}}

![s203](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s203.png)

下記をコピペして `What do you want the Assistant to say in response?` 部分に貼り付ける

`$ と書きました`{{copy}}

Languageは `Japanese` を選択して、［Create trigger］ボタンをクリック

![s204](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s204.png)

`That` をクリック

![s205](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s205.png)

`Webhooks` を検索して、`Webhooks` をクリックします

![s206](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s206.png)

`Make a web request` をクリックします

![s207](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s207.png)

下記項目を設定して、 `Create action` をクリックします。

|項目|値|
|:--|:--|
|①URL|下記URLを貼り付ける<br>`https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}}|
|②Method|POST|
|③Content Type|application/json|
|④Body|下記をコピペ<br>`{ "message": "{{TextField}}" }`{{copy}}|

![s208](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s208.png)

通知は不要なので、 `OFF` にしておきます。 ［Finish］ボタンをクリックします。

![s209](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s209.png)

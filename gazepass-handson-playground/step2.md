### 2-1. プログラムを起動する

#### .envファイルに設定値を反映させる
Katacodaの `IDE` をクリックしてVSCodeを起動します。
exampleフォルダにある `.env` ファイルを開いてください。

![s200](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/gazepass-handson-playground/images/s200.png)

環境変数ファイルに対してそれぞれ下記の値を反映してください。

|項目|値|
|:--|:--|
|VUE_APP_API_URL|`https://[[HOST_SUBDOMAIN]]-9000-[[KATACODA_HOST]].environments.katacoda.com/api`{{copy}}|
|VUE_APP_GAZEPASS_API_KEY|STEP1-2でメモした`API KEY`|
|GAZEPASS_API_SECRET|STEP1-2でメモした `Secret Key`|

#### backendを起動
下記をクリックするとプログラムが実行されます。

```
cd backend

npm run backend
```{{execute T1}}

ターミナルに `listening`　が表示されればOK

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/gazepass-handson-playground/images/s201.png)

#### frontendを起動

クリックしてもターミナル2に切り替わりにくいので何度かクリックしてください。

```
cd example/frontend

npm run frontend
```{{execute T2}}

下記のような表示がでればOK

![s202](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/gazepass-handson-playground/images/s202.png)

#### ブラウザ起動
下記をクリックして `ログイン` をクリックしてください。

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com

![s203](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/gazepass-handson-playground/images/s203.png)
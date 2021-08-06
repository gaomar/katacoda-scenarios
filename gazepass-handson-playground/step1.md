### 1-1. アカウントを登録する
下記URLにアクセスしてログイン処理を行います。

[https://gazepass.com/](https://gazepass.com/)

`Passwordless Sign In` をクリックしてください。

![s100](images/s100.png)

ご自身のメールアドレスで認証するか、Googleアカウントで認証するかお好きな方を選んでください。

![s101](images/s101.png)

認証が終わると、顔写真を登録します。これで生体認証が無いデバイスは顔認証でログインすることが可能となります。

![s102](images/s102.png)

デバイスを信頼するか確認されるので `Yes` をクリックします。

![s103](images/s103.png)

生体認証があるデバイスだと下記のように指紋認証を求められたり、iPhoneだとFaceIDが表示されます。

![s104](images/s104.png)

### 1-2. API Keysを作成する
ログインできたら、 `Developer Console` ボタンをクリックして、コンソール画面へ遷移します。

![s105](images/s105.png)

`Create API Key` をクリックして、API Keysを発行します。

![s106](images/s106.png)

API NameとDomainはそれぞれ任意の値を設定してください。

![s107](images/s107.png)

発行された `API Key` と `Secret Key` をメモしておきます。

![s108](images/s108.png)

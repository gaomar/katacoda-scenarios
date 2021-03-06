### 1-1. UiPathの設定
下記にアクセスして、UiPathのアカウントを作成してください。アカウントはGoogleでも新規でメールアドレスで登録しても構いません。

[https://platform.uipath.com](https://platform.uipath.com)

組織名、姓名、国/地域を設定します。利用規約とプライバシーポリシーの2つにチェックを入れて、［続行］ボタンをクリックします。

![s100](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s100.png)

言語を日本語に切り替えます。右上のボタンをクリックして、［日本語］を選択します。

![s101](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s101.png)

左側メニューから「サービス」をクリックします。サービスのメニューから［APIアクセス］をクリックします。

![s102](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s102.png)

Step3で使いますので、 `ユーザーキー` 、`アカウントの論理名` 、`テナントの論理名` 、 `クライアントID` をそれぞれメモしておきます。

![s103](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s103.png)

### 1-2. 標準マシンを設定する
`xxxxxDefault` 部分をクリックします。

![s104](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s104.png)

マシンを追加します。左側メニューのマシンをクリックして、［＋］ボタンをクリックして、［標準マシン］をクリックします。

![s105](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s105.png)

Windowsのシステムからコンピュータ名をコピーします。標準マシン名とコンピュータ名は一致させる必要があります。ライセンス - Unattendedランタイムの数字を「1」に増やしてから、［プロビジョニング］ボタンをクリックします。

![s106](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s106.png)

作成した標準マシンのメニューボタンをクリックして、［編集］をクリックします。ポップアップが表示されるので、そこに記載されているマシンキーをメモしておきます。

![s107](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s107.png)

### 1-3. ロボットを設定する
左側メニューのロボットをクリックし、［＋］ボタンを押して、標準ロボットをクリックします。ポップアップが表示されるので、それぞれ項目を埋めていきます。

入力したら［作成］ボタンをクリックします。

|項目|値|
|:--|:--|
|③マシン名|作成したマシン名を選択|
|④名前|ここの名前は何でもOKです。<br>今回は handson-rpa としました|
|⑤タイプ|`Unattended` を選択|
|⑥ドメイン\ユーザー名<br>パスワード|Windows 10でログインしているユーザ名とパスワードを指定<br>※ご自身の環境に合わせてください|

![s108](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s108.png)

### 1-4. ロボットグループを設定する
ロボットグループをクリックし、［＋］ボタンをクリックします。ポップアップが表示されるので、ロボットグループ名を入力し、［作成］ボタンをクリックします。今回は `handson-rpa` としました。

![s109](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s109.png)

グループに加えるロボット名にチェックを入れてから［更新］ボタンをクリックします。

![s110](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s110.png)

### 1-5. UiPath Studio をインストールする
左上のアカウントメニューから［Cloud Platformに戻る］をクリックします。

![s111](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s111.png)

左側メニューのリソースセンターにある `Community Edition` の「安定版」をクリックして、［ダウンロード］ボタンをクリックします。

![s112](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s112.png)

ダウンロードしたファイルをダブルクリックして、UiPath Studioをインストールします。

![s113](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s113.png)

### 1-6. UiPath Agent Desktop を設定する
スタートボタンから `UiPath Agent Desktop` を起動します。

![s114](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s114.png)

設定ボタンから［Orchestratorの設定］をクリックします。

![s115](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s115.png)

左側メニューから「Orchestratorの設定」をクリックして、Orchestrator URLを貼り付けます。URLはUiPathのURL `https://platform.uipath.com/xxxxx/xxxxxDefault/` 部分のみをコピーして貼り付けます。マシンキーは 1-2 で発行しているものを貼り付けます。［接続］ボタンをクリックします。

![s116](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s116.png)

接続されると、「接続済み、ライセンス済み」と表示されます。

![s117](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s117.png)

もし「接続済み、ライセンスなし」と表示された方は下記手順をお試しください。

![s400](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s400.png)

UiPath Orchestrator画面の右上にあるアイコンをクリックして、［ライセンス］をクリックします。

![s401](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s401.png)

Unattendedの［詳細を確認］をクリックします。

![s402](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s402.png)

サービスユーザー名が書かれていないライセンス状況が赤色側のアクティブを `OFF` にしてください。

![s403](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s403.png)

これで再度接続すると「接続済み、ライセンス済み」と表示されます。

### 1-7. UiPath Studioを起動する
裏で起動しているUiPath Studioの設定を行います。「ライセンスキーを取得」をクリックします。起動していない方はUiPath Studioを開いておいてください。

※ここでライセンス済みになっていない方は進むことができないので注意してください。

![s118](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s118.png)

「UiPath Studio」をクリック。

![s119](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s119.png)

「安定」をクリック。

![s120](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s120.png)

［プロセス］をクリック。

![s121](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s121.png)

### 1-8. UiPathプロセスを作成する
受け取ったデータをWindowsのメモ帳に記述するプロセスを作成します。名前に「callMemo」と入力して［作成］ボタンをクリックします。

![s122](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s122.png)

`Main.xaml` ファイルを開きます。

![s123](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s123.png)

「アクティビティ」タブをクリックして、[システム] - [ファイル] - [文字列を追加書き込み]ブロックを「ここにアクティビティをドロップ」部分にドラッグアンドドロップします。①

③「引数」タブをクリックして、 `message` と入力します。「文字列を追加書き込み」でテキスト部分に「message」を選択⑤、書き込む先のファイル名はお好きなところに保存してください。⑥

右側のプロパティ部分にある「エンコーディング」は `"utf-8"` を入力してください。⑦

![s124](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s124.png)

### 1-9. パブリッシュする
[システム] - [プロセスを開始]ブロックをドラッグアンドドロップします。「実行可能なパス」にメモ帳アプリがある場所を指定します。基本的に下記パスにあることが多いです。

`C:¥Windows¥system32¥notepad.exe`{{copy}}

アプリケーションの引数は文字列を追加書き込みで指定したファイルパスを入力します。これで準備できたので、画面右上にある［パブリッシュ］ボタンをクリックします。

![s125](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s125.png)

ロボットをクラウドにアップロードする処理を行います。［パブリッシュ］ボタンをクリックします。

![s126](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s126.png)

こちらの画面が表示されれば問題ありません。

![s127](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s127.png)

### 1-10. UIPath Orchestratorからプロセスをデプロイする
UIPath Orchestratorページを開いてください。左側メニューにある「プロセス」の［＋］ボタンをクリックします。パッケージ名は `callMemo` を選択して、［作成］ボタンをクリックします。

![s128](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s128.png)

### 1-11. ジョブを実行する
作成したジョブを実行してみましょう。左側メニューの「ジョブ」①の［▶］ボタン②をクリックします。先程デプロイした `callMemo_handson-rpa` のプロセスを選択③して、「パラメーター」タブ④をクリックします。［編集］鉛筆マーク⑤をクリックして、送信したいメッセージを入力します⑥。右下の［保存］をクリックします⑦。

![s129](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s129.png)

「実行ターゲット」タブ①をクリックして、 `handson-rpa` のロボットにあるチェックボックスをONにします。右下の［開始］ボタンをクリックするとジョブが実行されます。

![s130](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s130.png)

正しく実行されると、メモ帳が起動して「てすと」と自動的に入力されます。

![s131](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/uipath-ifttt-playground/images/s131.png)


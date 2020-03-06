### 2-1. 営業時間を設定する
電話がかかってきたときに、営業時間内かどうか設定することができます。これで時間外の電話対応をすることがなくなります。

左側メニューから「オペレーション時間」をクリックします。

![s200](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s200.png)

［新しい時間の追加］ボタンをクリックします。

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s201.png)

作成したオペレーション時間に名前を決めます。お好きな名前を入力してください。タイムゾーンは プルダウンメニューから `Asia/Tokyo` を選択します。土日は営業時間外なので、曜日を選択して［削除］ボタンをクリックします。

![s202](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s202.png)

営業時間を午後6時までにします。

![s203](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s203.png)

これで平日の午前9時〜午後6時までの対応が可能になりました。

### 2-2. 問い合わせフローを修正する
問い合わせフローを開いて、終話につながっている線を削除します。マウスカーソルを線上に持っていくと、☓印が出てくるのでクリックします。

![s204](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s204.png)

ブランチカテゴリにある「オペレーション時間を確認する」ブロックをドラッグアンドドロップします。プロンプトの再生ブロックと線でつなぎます。ブロックをクリックします。

![s205](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s205.png)

チェックボックスをオンにして、プルダウンメニューから「ハンズオン用営業時間」を選択します。

![s206](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s206.png)

操作カテゴリから「プロンプトの再生」ブロックを2つドラッグアンドドロップします。営業時間内と外にそれぞれ線をつなぎます。
プロンプトの再生の応答メッセージはお好きなメッセージを登録してください。

![s207](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s207.png)

最後に終話ブロックにつなげて、［公開］ボタンをクリックします。

![s208](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/amazonconnect-handson-playground/images/s208.png)

これで営業時間内と時間外の切り分けをすることができました。

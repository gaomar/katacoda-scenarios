### 1-1. Denoを動かしてみよう
下記コマンドを実行してみよう。`Welcome to Deno 🦕`と表示されればOKです。

`deno run https://deno.land/std/examples/welcome.ts`{{execute}}

### 1-2. TypeScriptから動かしてみよう

`IDE` タブをクリックして、 `example/hello.ts` ファイルを開いてください。

下記プログラムをファイルに反映してみましょう。

<pre class="file" data-target="clipboard">
let myName: string;
myName = '私の名前は「XXX」です。';

console.log(myName);
</pre>

![s100](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflow-handson-playground/images/s100.png)

下記コマンドを実行してみよう。コンパイルされてログが出力されます。

`deno run hello.ts`{{execute}}

![s101](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/deno-dialogflow-handson-playground/images/s101.png)

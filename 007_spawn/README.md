# spawn

## ねらい

サブプロセスの生成と、サブプロセスとのコミュニケーションの方法を知る

## 問題

コマンドライン引数にコマンドが渡されるので、サブプロセスとして実行して終了を待ち、終了ステータス・標準入力・標準出力を取得し、その順で改行で区切って標準出力に出力してください。

## 実行例

    $ ruby example/spawn.rb test/foo.sh
    42
    stdout
    stderr

## テスト

`test.sh` の `./test/cat_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください。`./test.sh` を実行して `OK` と出力されれば正解です。

## 応用

サブプロセス実行時に、自身の標準入力をサブプロセスの標準入力に渡してください。

`test_stdin.sh` の `./test/cat_stdin_test.sh ` のあとに作成したプログラムを実行するコマンドを書き、`./test_stdin.sh` を実行して `OK` と出力されれば正解です。

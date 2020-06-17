# fibonacci

## ねらい

再帰やパターンマッチを知る。

## 問題

コマンドライン引数に 1 つの自然数 (10進数) n が渡されるので、n 番目の[フィボナッチ数](https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A3%E3%83%9C%E3%83%8A%E3%83%83%E3%83%81%E6%95%B0)を標準出力に出力してください。

## 実行例

    $ ruby example/fizzbuzz.rb 1
    1
    $ ruby example/fizzbuzz.rb 2
    1
    $ ruby example/fizzbuzz.rb 3
    2
    $ ruby example/fizzbuzz.rb 4
    3
    $ ruby example/fizzbuzz.rb 5
    5

## テスト

`test.sh` の `./test/fibonacci_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください。

`./test.sh` を実行して `OK` と出力されれば正解です。

## 応用

結果が符号なし 64bit で表現できない大きな値にも対応してください。

`test_large.sh` の `./test/fibonacci_test_large.sh ` のあとに作成したプログラムを実行するコマンドを書き、`./test_large.sh` を実行して `OK` と出力されれば正解です。

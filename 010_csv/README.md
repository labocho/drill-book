# csv

## ねらい

CSV へのアクセス方法を知る。

## 問題

コマンドライン引数に CSV ファイルのパスが渡されます。CSV ファイルには下記のように 1 行目に列の名前が記載されています。

```
number,text
...
```

CSV ファイルを読み込み、各行の `text` 列の値を改行で区切って標準出力に出力してください。

## 実行例

    $ ruby example.rb test1.csv
    includes
    new line
    includes , comma
    includes " double quote
    unquoted
    $ ruby example.rb test2.csv
    includes
    new line
    includes , comma
    includes " double quote
    unquoted

## テスト

`test.sh` の `./test/csv_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください。
`./test.sh` を実行して `OK` と出力されれば正解です。

## 応用

コマンドライン引数に CSV ファイルのパスが渡されます。列の順番を逆にして、標準出力に CSV で出力してください。CSV はカンマ区切り、改行コード LF、BOM なし UTF-8 で、必要な箇所のみクォートしてください。
`test_write.sh` の `./test/csv_write_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください。
`./test_write.sh` を実行して `OK` と出力されれば正解です。

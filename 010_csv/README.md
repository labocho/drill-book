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

`./test.sh ruby example.rb` のように実行して `OK` と出力されれば正解です。

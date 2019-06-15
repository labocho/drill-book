# cat

## ねらい

ファイルの読み込み、標準入力からの読み込みを知る。

## 問題

コマンドライン引数にファイル名が渡されるので、ファイルの内容を読んで標準出力に出力してください。標準入力を読んで標準出力に出力してください。

## 実行例

    $ echo foo > foo.txt && ruby example.rb foo.txt && rm foo.txt
    foo
    $ echo foo | ruby example.rb
    foo

## テスト

`./test.sh ruby example.rb` のように実行して `OK` と出力されれば正解です。

## 応用

標準入力を読んで標準出力に出力してください。`./test_stdin.sh ruby example.rb` のように実行して `OK` と出力されれば正解です。

引数が複数の場合、指定された順に連結して標準出力に出力してください。引数がない場合は標準入力を呼んで標準出力に出力してください。`./test_multi.sh ruby example.rb` のように実行して `OK` と出力されれば正解です。
# json

## ねらい

JSON へのアクセス方法を知る。

## 問題

コマンドライン引数に JSON ファイルのパスが渡されます。内容は `text` をキーとして、文字列の値を持つオブジェクトの配列です。
これを読み込み、各オブジェクトの `text` 値を改行で区切って標準出力に出力してください。

## 実行例

    $ ruby example/json.rb test/test1.json
    includes
    new line
    includes , comma
    includes " double quote
    unquoted

## テスト

`test.sh` の `./test/json_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください。
`./test.sh` を実行して `OK` と出力されれば正解です。

## 応用

コマンドライン引数に上記の形式の JSON ファイルのパスが渡されます。各オブジェクトの `text` に含まれる小文字を大文字にして、標準出力に出力してください。無駄な空白、改行はのぞき、改行コードは `\n` で、不要なエスケープは行わないでください。

`test_write.sh` の `./test/json_write_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください。
`./test_write.sh` を実行して `OK` と出力されれば正解です。

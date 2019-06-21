# parallel_curl

## ねらい

並列実行の方法を知る

## 問題

コマンドライン引数に複数の URL が渡されるので並列で HTTP GET リクエストを送信して、レスポンスボディを標準出力に出力してください。テストではレスポンスは ASCII の 1 行のテキストです。すべてのレスポンスボディを ASCII 昇順にソートして出力してください。

## 実行例

    $ ruby server.rb &
    $ SERVER=$!
    $ ruby example.rb 'http://localhost:20080/?s=1.1&t=foo' 'http://localhost:20080/?s=0.9&t=bar' 'http://localhost:20080/?s=1.0&t=baz'
    BAR
    BAZ
    FOO
    $ kill $SERVER

## テスト

`./test.rb ruby example.rb` のように実行して `OK` と出力されれば正解です。
(ruby が必要です)

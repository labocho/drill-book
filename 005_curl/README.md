# curl

## ねらい

HTTP リクエストの方法を知る

## 問題

コマンドライン引数に URL が渡されるので、HTTP GET リクエストを送信して、レスポンスボディを標準出力に出力してください。

## 実行例

    $ ruby test/server.rb &
    $ SERVER=$!
    $ ruby example/curl.rb 'http://localhost:20080/?n=16'
    256
    $ kill $SERVER

## テスト

`test.sh` の `./test/curl_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください。

`./test.sh` を実行して `OK` と出力されれば正解です。

(ruby が必要です)

## 応用

HTTPS で GET リクエストを送信し、レスポンスボディを標準出力に出力してください。自己署名の証明書を使うので、証明書の検証をパスするか `test/cert.pem` を CA 証明書として使用してください。

`test_https.sh` の `./test/curl_https_test.sh ` のあとに作成したプログラムを実行するコマンドを書き、`./test_https.sh` を実行して `OK` と出力されれば正解です。

(ruby が必要です)

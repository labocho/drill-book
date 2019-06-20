# curl

## ねらい

HTTP リクエストの方法を知る

## 問題

コマンドライン引数に URL が渡されるので、HTTP GET リクエストを送信して、レスポンスを標準出力に出力してください。

## 実行例

    $ ruby server.rb &
    $ SERVER=$!
    $ ruby example.rb 'http://localhost:20080/?n=16'
    256
    $ kill $SERVER

## テスト

`./test.rb ruby example.rb` のように実行して `OK` と出力されれば正解です。
(ruby が必要です)

## 応用

HTTPS で GET リクエストを送信してください。自己署名の証明書を使うので、証明書の検証をパスするか `cert.pem` を CA 証明書として使用してください。
`./test_https.rb ruby example_https.rb` のように実行して `OK` と出力されれば正解です。
(ruby が必要です)

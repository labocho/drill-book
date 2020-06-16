# nkf

## ねらい

文字列のエンコーディングの変更の方法を知る。

## 問題

1 つめのコマンドライン引数として、エンコーディングが指定されます。

- `-W16` UTF-16 BOM あり (LE または BE)
-  `-S` Shift_JIS (CP932)

2 つめのコマンドライン引数として渡されるファイルをこのエンコーディングで読み込んで、UTF-8 (BOM なし) に変換して標準出力に出力してください。

## 実行例

    $ ruby example/nkf.rb -S test/sjis.txt
    漢字①
    $ ruby example/nkf.rb -W16 test/utf16le.txt
    絵文字😃
    $ ruby example/nkf.rb -W16 test/utf16be.txt
    絵文字😃

## テスト

`test.sh` の `./test/nkf_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください。

`./test.sh` を実行して `OK` と出力されれば正解です。

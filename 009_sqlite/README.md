# sqlite3

## ねらい

RDBMS へのアクセス方法を知る。

## 問題

このディレクトリにある prefectures.sqlite3 は SQLite3 データベースで、prefectures テーブルがあり、地方公共団体コードと都道府県名が保存されています。

```
CREATE TABLE prefectures (
    code TEXT, ; 地方公共団体コード
    name TEXT  ; 都道府県名
);
```

1 つめのコマンドライン引数として、地方公共団体コードが渡されるので、このデータベースにアクセスして、都道府県名を標準出力に出力してください。

## 実行例

    $ ruby example.rb 130001
    東京都
    $ ruby example.rb 270008
    大阪府

## テスト

`./test.sh ruby example.rb` のように実行して `OK` と出力されれば正解です。

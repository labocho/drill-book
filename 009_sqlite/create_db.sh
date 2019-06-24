#!/bin/sh
rm -f prefectures.sqlite3
cat <<EOS | sqlite3 prefectures.sqlite3
create table prefectures (code text, name text);
.separator ,
.import prefectures.csv prefectures
EOS

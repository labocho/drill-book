#!/bin/bash
# `./test/sqlite_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/sqlite_test.sh target/debug/sqlite

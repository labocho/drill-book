#!/bin/bash
# `./test/csv_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/csv_test.sh target/debug/csv

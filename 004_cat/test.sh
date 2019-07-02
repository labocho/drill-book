#!/bin/bash
# `./test/cat_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/cat_test.sh target/debug/cat

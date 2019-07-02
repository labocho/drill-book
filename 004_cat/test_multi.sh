#!/bin/bash
# `./test/cat_multi_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/cat_multi_test.sh target/debug/cat

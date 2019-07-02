#!/bin/bash
# `./test/cat_stdin_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/cat_stdin_test.sh target/debug/cat

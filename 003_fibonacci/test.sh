#!/bin/bash
# `./test/fibonacci_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/fibonacci_test.sh target/debug/fibonacci

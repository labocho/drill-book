#!/bin/bash
# `./test/fizzbuzz_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/fizzbuzz_test.sh target/debug/fizzbuzz

#!/bin/bash
# `./test/fizzbuzz_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
rustc fizzbuzz.rs
./test/fizzbuzz_test.sh ./fizzbuzz

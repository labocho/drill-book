#!/bin/bash
# `./test/fibonacci_large_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
rustc fibonacci_large.rs
./test/fibonacci_large_test.sh ./fibonacci_large

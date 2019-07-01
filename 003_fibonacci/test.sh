#!/bin/bash
# `./test/fibonacci_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
rustc fibonacci.rs
./test/fibonacci_test.sh ./fibonacci

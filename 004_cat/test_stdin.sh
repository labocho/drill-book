#!/bin/bash
# `./test/cat_stdin_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
rustc cat.rs
./test/cat_stdin_test.sh ./cat

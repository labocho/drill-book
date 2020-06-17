#!/bin/bash
# `./test/nkf_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/nkf_test.sh target/debug/nkf

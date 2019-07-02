#!/bin/bash
# `./test/hello_world_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/hello_world_test.sh target/debug/hello_world

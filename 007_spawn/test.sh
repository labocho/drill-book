#!/bin/bash
# `./test/spawn_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/spawn_test.sh target/debug/spawn

#!/bin/bash
# `./test/spawn_stdin_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/spawn_stdin_test.sh target/debug/spawn

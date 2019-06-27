#!/bin/bash
# `./test/hello_world_test.sh ` のあとに作成したプログラムを実行するコマンドを書いてください
rustc hello_world.rs
./test/hello_world_test.sh ./hello_world

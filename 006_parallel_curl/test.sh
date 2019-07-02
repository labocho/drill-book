#!/bin/bash
# `./test/parallel_curl_test.rb ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/parallel_curl_test.rb target/debug/parallel_curl

#!/bin/bash
# `./test/curl_test.rb ` のあとに作成したプログラムを実行するコマンドを書いてください
cargo build
./test/curl_test.rb target/debug/curl

#!/bin/bash
# `./test/curl_test.rb ` のあとに作成したプログラムを実行するコマンドを書いてください
mkdir -p build
cd build

if [ ! -e conan.lock ]
then
  conan install ..
fi

if [ ! -e Makefile ]
then
  cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
fi

cmake --build .
cd ..
./test/curl_test.rb build/bin/curl


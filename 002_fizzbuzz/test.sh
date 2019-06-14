#!/bin/bash

assert() {
  expected="$1"
  actual="$2"

  if [ "$actual" = "$expected" ]; then
    echo "OK"
  else
    echo "FAIL: '$expected' expected, but got '$actual'"
    exit 1
  fi
}

echo "$@" 16
out=$("$@" 16)

s=$(cat <<EOS
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
EOS
)

assert "$s" "$out"

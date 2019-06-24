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

assert "$(cat expected.txt)" "$("$@" test1.csv)"
assert "$(cat expected.txt)" "$("$@" test2.csv)"

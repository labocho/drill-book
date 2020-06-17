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

assert "$(cat test/test2.csv)" "$("$@" test/test1.csv)"
assert "$(cat test/test1.csv)" "$("$@" test/test2.csv)"

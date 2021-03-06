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

assert "$(cat test/makura1.txt test/makura2.txt)" "$("$@" test/makura1.txt test/makura2.txt)"
assert "$(cat test/makura2.txt)" "$(cat test/makura1.txt | "$@" test/makura2.txt)"
assert "$(cat test/makura1.txt)" "$(cat test/makura1.txt | "$@")"

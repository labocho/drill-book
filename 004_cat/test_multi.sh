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

assert "$(cat makura1.txt makura2.txt)" "$("$@" makura1.txt makura2.txt)"
assert "$(cat makura2.txt)" "$(cat makura1.txt | "$@" makura2.txt)"
assert "$(cat makura1.txt)" "$(cat makura1.txt | "$@")"

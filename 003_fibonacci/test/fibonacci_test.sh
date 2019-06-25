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

assert 1 $("$@" 1)
assert 1 $("$@" 2)
assert 2 $("$@" 3)
assert 3 $("$@" 4)
assert 6765 $("$@" 20)

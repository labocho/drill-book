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

assert "漢字①" "$("$@" -S test/sjis.txt)"
assert "絵文字😃" "$("$@" -W16 test/utf16le.txt)"
assert "絵文字😃" "$("$@" -W16 test/utf16be.txt)"

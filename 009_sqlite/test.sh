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

expected=$(cat <<EOS
42
stdout
stderr
EOS
)

assert "東京都" "$("$@" 130001)"
assert "大阪府" "$("$@" 270008)"

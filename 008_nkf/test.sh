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

assert "漢字①" "$("$@" -S sjis.txt)"
assert "絵文字😃" "$("$@" -W16 utf16le.txt)"
assert "絵文字😃" "$("$@" -W16 utf16be.txt)"

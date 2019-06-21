#!/bin/sh
stdin=$(cat)
echo $stdin | tr '[a-z]' '[A-Z]'
echo $stdin | tr '[A-Z]' '[a-z]' >&2
exit 42

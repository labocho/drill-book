# ./test.rb ruby example.rb
require "open-uri"
puts open(ARGV.first, &:read)

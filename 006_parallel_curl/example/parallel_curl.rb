# ./test.rb ruby example.rb
require "open-uri"

threads = ARGV.map {|url|
  Thread.new {
    open(url, &:read)
  }
}
puts threads.map(&:value).sort

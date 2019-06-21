# ./test.rb ruby example.rb
require "open-uri"

result = Queue.new
threads = ARGV.map {|url|
  Thread.new {
    open(url, &:read)
  }
}
puts threads.map(&:value).sort

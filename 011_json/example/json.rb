# ./test.sh ruby example.rb
require "json"

JSON.parse(ARGF.read).each do |o|
  puts o["text"]
end

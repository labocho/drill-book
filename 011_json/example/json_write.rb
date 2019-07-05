# ./test.sh ruby example.rb
require "json"

puts JSON.parse(ARGF.read).each{|o| o["text"].upcase! }.to_json

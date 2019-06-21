# ./test.sh ruby example.rb
require "open3"
o, e, s = Open3.capture3(ARGV.first)
puts s.exitstatus
puts o
puts e

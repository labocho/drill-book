# ./test.sh ruby example.rb
require "open3"
o, e, s = Open3.capture3(ARGV.first, stdin_data: $stdin.read)
puts s.exitstatus
puts o
puts e

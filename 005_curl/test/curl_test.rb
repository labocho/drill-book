#!/usr//bin/env ruby

require "open3"

def assert(expected, actual)
  if actual == expected
    puts "OK"
  else
    puts "FAIL: #{expected.inspect} expected, but got #{actual.inspect}"
    exit 1
  end
end

def sh(*args)
  o, e, s = Open3.capture3(*args)
  unless s.success?
    $stderr.puts e
    exit s.to_i
  end
  o
end

# ========================================
# http server
# ========================================
require "webrick"
require "logger"

pid = spawn("ruby", "#{__dir__}/server.rb")

begin
  sleep 1
  assert "256\n", sh(*ARGV, "http://localhost:20080/?n=16")
ensure
  Process.kill(:INT, pid)
  Process.wait(pid)
end

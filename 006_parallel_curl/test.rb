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
require "benchmark"

pid = spawn("ruby", "#{__dir__}/server.rb")
at_exit {
  Process.kill(:INT, pid)
  Process.wait(pid)
}
begin
  sleep 1

  t = Benchmark.realtime do
    assert "BAR\nBAZ\nFOO\n", sh(*ARGV, "http://localhost:20080/?s=1.1&t=foo", "http://localhost:20080/?s=0.9&t=bar", "http://localhost:20080/?s=1.0&t=baz")
  end

  if (1.0..2.0).cover?(t)
    puts "OK"
  else
    puts "FAIL: exptect to run program in 1.0-2.0s but #{t}s."
  end
end

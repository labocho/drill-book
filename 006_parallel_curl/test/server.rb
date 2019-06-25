#!/usr//bin/env ruby
require "webrick"
require "logger"

config = {
  BindAddress: "0.0.0.0",
  Port: 20080,
  AccessLog: [[open("/dev/null", "w"), ""]],
  Logger: Logger.new("/dev/null"),
}

server = WEBrick::HTTPServer.new(config)

server.mount_proc "/" do |req, res|
  sleep req.query["s"].to_f
  t = req.query["t"]
  res.body = t.upcase + "\n"
end

trap(:INT) { server.shutdown }
server.start

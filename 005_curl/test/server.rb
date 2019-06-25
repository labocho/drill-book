#!/usr//bin/env ruby
require "webrick"
require "logger"

config = {
  BindAddress: "0.0.0.0",
  Port: 20080,
  AccessLog: [[open("/dev/null", "w"), ""]],
  Logger: Logger.new("/dev/null"),
}

if ARGV.first == "https"
  require "webrick/https"
  require "openssl"

  config.merge!(
    SSLEnable: true,
    SSLCertificate: OpenSSL::X509::Certificate.new(File.read("#{__dir__}/cert.pem")),
    SSLPrivateKey: OpenSSL::PKey::RSA.new(File.read("#{__dir__}/pkey.pem")),
  )
end

server = WEBrick::HTTPServer.new(config)

server.mount_proc "/" do |req, res|
  n = req.query["n"].to_i
  n = n ** 2
  res.body = n.to_s + "\n"
end

trap(:INT) { server.shutdown }
server.start

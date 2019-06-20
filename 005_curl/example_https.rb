# ./test_https.rb ruby example_https.rb
require "net/http"
require "uri"

uri = URI(ARGV.first)
http = Net::HTTP.new(uri.hostname, uri.port)
http.use_ssl = true
http.ca_file = "#{__dir__}/cert.pem"
http.start do |h|
  puts h.get(uri.request_uri).body
end

# ./test.sh ruby example.rb
require "csv"

reader = CSV.open(ARGV.first, headers: :first_row)

# read header
reader.readline
new_headers = reader.headers.reverse
reader.rewind

writer = CSV.new($stdout, headers: new_headers)
writer << new_headers
reader.each do |row|
  writer << row.to_hash
end

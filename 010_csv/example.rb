# ./test.sh ruby example.rb
require "csv"


CSV.foreach(ARGV.first, headers: :first_row) do |row|
  puts row["text"]
end

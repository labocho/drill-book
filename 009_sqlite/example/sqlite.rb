# ./test.sh ruby example.rb
gem "sqlite3", "~> 1.4.1"
require "sqlite3"

code = ARGV.first
db = SQLite3::Database.new("#{__dir__}/../test/prefectures.sqlite3")
rows = db.execute("SELECT name FROM prefectures WHERE code = ?", [code])
if rows.empty?
  raise "Cannot find prefecture for #{code.inspect}"
end
puts rows[0][0]

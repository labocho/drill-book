# ./test.sh ruby example.rb
require "bundler/setup"
require "sqlite3"

code = ARGV.first
db = SQLite3::Database.new("#{__dir__}/../test/prefectures.sqlite3")
rows = db.execute("SELECT name FROM prefectures WHERE code = ?", [code])
if rows.empty?
  raise "Cannot find prefecture for #{code.inspect}"
end
puts rows[0][0]

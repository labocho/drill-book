# ./test.sh ruby example.rb
encoding = case ARGV.first
when "-W16"
  "BOM|utf-16"
when "-S"
  "cp932"
else
  raise "Unknown encoding"
end

print open(ARGV[1], "rb:#{encoding}:utf-8", &:read)

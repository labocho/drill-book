# ./test.sh ruby hello.rb
def fizzbuzz(n)
  case
  when n % 15 == 0
    puts "FizzBuzz"
  when n % 5 == 0
    puts "Buzz"
  when n % 3 == 0
    puts "Fizz"
  else
    puts n
  end
end

n = ARGV.first.to_i
1.upto(n) do |i|
  fizzbuzz(i)
end

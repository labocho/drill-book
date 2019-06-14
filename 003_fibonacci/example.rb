# ./test.sh ruby hello.rb
def fibonacci(n)
  case n
  when 1, 2
    1
  else
    a, b = 1, 1
    3.upto(n) do
      a, b = [b, a + b]
    end
    b
  end
end

n = ARGV.first.to_i

puts fibonacci(n)

# ./test.sh ruby hello.rb
def fibonacci(n)
  a, b = 1, 1
  3.upto(n) do
    a, b = [b, a + b]
  end
  b
end

n = ARGV.first.to_i
puts fibonacci(n)

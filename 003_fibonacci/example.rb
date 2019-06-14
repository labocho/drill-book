# ./test.sh ruby hello.rb

@cache = [nil, 1, 1]

def fibonacci(n)
  @cache[n] ||= fibonacci(n - 2) + fibonacci(n - 1)
end

n = ARGV.first.to_i
puts fibonacci(n)

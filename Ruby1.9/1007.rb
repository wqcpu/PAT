require 'prime'
primes = []
n = Integer( gets)
Prime.each(n) do |prime|
  primes << prime
end
count = 0
len = primes.length
0.upto(len-2) do |i|
  n = primes[i]
  n2 = primes[i+1]
  if n2 - n ==2
    count += 1
  end
end
p count

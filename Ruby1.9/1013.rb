require 'prime'
def Input()
  m,n = gets.split
  m = Integer( m)
  n = Integer( n)
  return m,n
end

def Output(nums)
  count = 0
  nums[0..-2].each do |i| 
    if count == 9
      puts i
      count = 0
    else
      print i,' '
      count += 1
    end
  end
  print nums[-1]
end

def getprime(m,n)
  return  Prime.first(n)-Prime.first(m-1)
end

m,n = Input()
nums = getprime(m,n)
Output(nums)


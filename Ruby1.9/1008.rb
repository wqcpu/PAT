n,m = gets.split
nums = gets.split
m = Integer(m)
n = Integer(n)
len = nums.length
if m <= n
  nums = nums.last(m)+nums.first(len-m)
else
  m = m - n
  nums = nums.last(m)+nums.first(len-m)
end
i = 0
(len-1).times do 
  print nums[i],' '
  i += 1
end
print nums[i]

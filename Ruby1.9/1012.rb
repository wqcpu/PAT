def Input()
  line = gets.split
  line.shift
  nums = []
  line.each {|i| nums << Integer( i)}
  return nums
end

def Output(nums)
 
  nums[0..2].each do |i|
    if i==0
      print 'N',' ' 
    else
      print i,' '
    end
  end
 
  if nums[3]==0
    print 'N',' ' 
  else
    print sprintf "%.1f",nums[3]
    print ' '
  end
 
  print nums[4]
end

def mod5(nums)
  a = []
  5.times { a << []}
  nums.each do |n|
    a[ n%5] << n
  end
  return a
end
def jiaocuosum(nums)
  jia = true
  sum = 0
  nums.each do |i|
    if jia
      sum += i
      jia = !jia
    else 
      sum -= i
      jia  = !jia
    end
  end
  return sum
end

def solution(nums)
  a = []

  5.times { a << 0}
  nums[0].each { |i| a[0] += i if i.even?}
  a[1] = jiaocuosum(nums[1])
  a[2] = nums[2].length
  a[3] = Float( ( nums[3].reduce(:+)))/(nums[3].length) if nums[3].length != 0
  a[4] = nums[4].max
  return a
end

nums = Input()   
nums =  mod5( nums) 
nums =solution( nums)
Output(nums)

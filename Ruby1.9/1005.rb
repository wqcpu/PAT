require 'set'
def find_childs( n)
  childs = []
  childs.push(n)
  while n != 1
    if n.even?
      n = n/2
      childs.push(n)
    else
      n = (3*n+1)/2
      childs.push(n)
    end
  end
  return childs
end

def allKeys?(nums_and_childs)
  nums_and_childs.each_key do |n|
    return false  if !(nums_and_childs[n].to_set & nums_and_childs.keys.to_set.delete(n)).empty?
  end
  return true
end


def nums_to_h(nums) 
  nums_and_childs = Hash.new
  while !nums.empty?
    n = nums.pop
    childs = find_childs(n)
    nums = nums - childs
    nums_and_childs[n] = childs
  end
  return nums_and_childs
end

# nums = [3,5,6,7,8,11]
# nums =  ["3", "5", "6", "7", "8", "11"]
def solution(nums)
  nums_and_childs = nums_to_h(nums)
  while !allKeys?(nums_and_childs)
    nums_and_childs = nums_to_h( nums_and_childs.keys)
  end
  return nums_and_childs.keys
end
def Input()
  line =  gets
  line = gets.split
  nums = []
  line.each {|x| nums.push(Integer( x))}
  return nums
end

key_nums = solution( Input()).sort {|x,y| y<=>x}
i = 0
(key_nums.length-1).times do
  print key_nums[i],' '
  i += 1
end
print key_nums[i]


# num = '234'

num = gets
num = num[0..-2]
num = num.split(//)
len = num.length
trans = {1=>lambda{|z| 1.upto(z) {|i| print i}},2=>lambda{|y| print 'S'*y},3=>lambda{|x| print 'B'*x}}
num.each_with_index {|item,index|  trans[len-index][Integer( item)] }

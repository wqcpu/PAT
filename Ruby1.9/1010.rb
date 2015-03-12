def Input()
  poly = []
  gets.split.each {|i| poly << Integer( i)}
  len = poly.length()/2
  temp = []
  i = 0
  len.times do
    temp << [poly[i*2], poly[i*2+1]]
    i += 1
  end
  return temp
end
def Output(line)
  if line.empty?
    print 0,' ',0
  else
    len = line.length
    i = 0
    (len-1).times do
      print line[i][0],' ',line[i][1],' '
      i += 1
    end
    print line[i][0],' ',line[i][1]
  end
end

poly = Input()
new_poly = []
poly.each do |x,n|
  if n!=0
    x = x * n
    n -= 1
    new_poly << [x,n]
  end
end
Output(new_poly)

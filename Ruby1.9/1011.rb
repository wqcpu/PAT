def Input()
  n = Integer( gets())
  abc = []
  n.times { abc << gets.split}
  return abc
end
def Output()
end
abc = Input()
i = 1
abc.each do |item|
  a,b,c = Integer(item[0]),Integer(item[1]),Integer(item[2])
  if ( a+b)>c
    print 'Case #',i,': true'
  else
    print 'Case #',i,': false'
  end
  puts
  i += 1
end


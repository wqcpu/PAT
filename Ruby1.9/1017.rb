def Input()
  line = gets.split
  a = line[0]
  b = line[1]
  return a, b
end

a, b = Input()
a = Integer(a)
b = Integer(b)

print a/b,' ',a%b

stack = []
gets.split.each {|word| stack.push(word)}
(stack.length-1).times do
  print stack.pop,' '
end
print stack.pop

def isRight(line)
  return 'NO' if line =~ /[^PAT]/
  if line =~ /A*PA+TA*/
    return 'YES'
  else
    return 'NO'
  end
end
lines = Integer(gets)
lines.times do 
  line = gets
  line = line[0..-2]
  puts isRight(line)
end

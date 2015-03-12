def Input()
  str = []
  str << gets
  str << gets
  str << gets  
  str << gets
  return str
end

def Output(day,hour,min)
  week = {'A'=>'MON','B'=>'TUE','C'=>'WED',
    'D'=>'THU','E'=>'FRI','F'=>'SAT',
    'G'=>'SUN'}
  print week[day],' '
  if hour =~ /[0-9]/
    print '0',hour
   else
    print (hour.ord - 'A'.ord )+10
  end
  print ':'
  if min<=9
    print '0',min
  else
    print min
  end
end

def find_hour(str1, str2)
  i = 0
  str1.length.times do
    if str1[i] == str2[i]
      if str1[i] =~ /[0-9]|[A-N]/
        return str1[i]
      end
    end
    i += 1
  end
end

def find_day( str1, str2)
  index = (str1 =~ /[A-Z]/)
  return nil if !index
  return str1[index] if  str1[index] == str2[index]
  find_day(str1[index..-1], str2[index..-1])
end

def find_min(str1,str2)
  i = 0
  str1.length().times do
    if str1[i] == str2[i]
      if str1[i] =~ /[a-z]|[A-Z]/
        return i
      end
    end
    i += 1
  end
end

str = Input()
day = find_day(str[0],str[1])
index = str[0].rindex(day)+1
hour = find_hour(str[0][index..-1],str[1][index..-1])
min = find_min(str[2], str[3])
Output( day, hour, min)

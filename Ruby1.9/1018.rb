def Input()
  line = gets
  line = Integer( line)
  record = []
  line.times do
    line = gets.split
    record << [line[0], line[1]]
  end
  return record
end
def pk(a, b)
  rule = {['B','C']=>1,['C','J']=>1, ['J','B']=>1}
  return nil if a == b
  if rule[ [ a, b]]
    return 1
  else
    return -1
  end
end
def init_record()
  record_of_a =Hash.new
  record_of_b =Hash.new
  cjb = ['C','B','J']
  cjb.each do |i|
    record_of_a[i] = []
    record_of_b[i] = []
  end
  return record_of_a, record_of_b
end
record = Input()

def get_record_of_pk(record)
  record_of_a, record_of_b = init_record()  
  record.each do |a, b|  
    record_of_a[a] << pk(a, b)
    record_of_b[b] << pk(b, a)
  end
  return record_of_a, record_of_b 
end
record_of_a, record_of_b = get_record_of_pk(record)

def sfp(record_of_x)
  win = 0
  total_num_of_win = 0
  lose = 0
  peace =0
  fre_of_sjb_win = Hash.new
  record_of_x.each do |record|
    record[1].each do |iswin|
      if iswin == 1
        win += 1
      elsif iswin == -1
        lose += 1
      else
        peace += 1
      end

    end
    fre_of_sjb_win[record[0]] = win
    total_num_of_win += win
    win = 0
  end
  return total_num_of_win,peace,lose,fre_of_sjb_win
end

win,peace,lose,fre_a = sfp(record_of_a)
print win,' ', peace,' ',lose
puts

win,peace,lose,fre_b = sfp(record_of_b)
print win,' ', peace,' ',lose
puts

def sort_fre(fre)
  fre.sort_by {|record| [record[1],'Z'.ord-record[0].ord]}
end

print sort_fre(fre_a)[-1][0],' ',sort_fre(fre_b)[-1][0]

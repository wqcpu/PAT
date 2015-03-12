def Input()
  line = gets.split
  a = line[0]
  da = line[1]
  b = line[2]
  db = line[3]
  return a,da,b,db
end

def find_p(a,da)
  count = 0
  0.upto( a.length) do |i|
    count += 1 if a[i] == da
  end
  return da * count
end

a,da,b,db = Input()
pa = find_p( a, da)
pb = find_p( b, db)
pa = '0' if pa == ''
pb = '0' if pb == ''
puts Integer( pa) + Integer( pb)

def Input()
  return Integer( gets)
end

def get_p1_p2(n)
  n = sprintf("%.4d", n)
  n = n.split(//)
  p1 = ( n.sort {|x,y| y<=>x}).join
  p2 = n.sort().join
  p1 = Integer( p1, 10)
  p2 = Integer( p2, 10)
  return p1, p2
end


def blackhole_of_N(n)
  p1, p2 = get_p1_p2( n)
  n = p1 - p2
  return p1, p2, n if n == 0 or n == 6174
  $print_stack << blackhole_of_N(n)
  return p1, p2, n
end

def Output()
  while ! $print_stack.empty?
    p1, p2, n = $print_stack.pop
    print sprintf("%.4d",p1),' - ',sprintf( "%.4d",p2),' = ',sprintf("%.4d",n),"\n"
  end
end
n = Input()
$print_stack = []
$print_stack.push( blackhole_of_N(n))
Output()

class Student

  attr_reader :num, :de_socre, :cai_socre

  def initialize(num, de_socre, cai_socre)
    @num = num
    @de_socre = de_socre
    @cai_socre = cai_socre
  end
end

def Input()
  line = gets.split
  total_num_of_students = Integer( line[0])
  l = Integer( line[1])
  h = Integer( line[2])
  return total_num_of_students,l,h
end

def kick_out_losers(students,l)
  losers = []
  students.each do |student|
    if student.de_socre < l or student.cai_socre < l
      losers << student
    end
  end
  return ( students - losers)
end

def find_top_level(students,h)
  top_level = []
  students.each do |student|
    top_level << student if student.de_socre >= h and student.cai_socre >= h
  end
  return top_level
end

def find_second_level(students, h)
  second_level = []
  students.each do |student|
    second_level << student if student.de_socre >= h 
  end
  return second_level
end

def find_third_level( students)
  third_level = [] 
  students.each do |student|
    third_level << student if student.de_socre >= student.cai_socre
  end
  return third_level
end

# p students.length
def solution()
  total_num_of_students,l,h = Input()
  # p total_num_of_students,l,H
  students = []
  total_num_of_students.times do
    line = gets.split
    num = line[0]
    de_socre = Integer( line[1])
    cai_socre = Integer( line[2])
    student = Student.new( num, de_socre, cai_socre)
    students << student
  end

  students = kick_out_losers( students, l)
  total_num_of_pass_students = students.length
  return 0, [], [], [], [] if total_num_of_pass_students == 0

  top_level = find_top_level( students, h)
  students = students - top_level
  return total_num_of_pass_students, top_level,[],[],[] if students.empty?

  second_level = find_second_level( students,h)
  students =students - second_level
  return total_num_of_pass_students, top_level, second_level,[],[] if students.empty?

  third_level = find_third_level( students)
  students = students - third_level
  return total_num_of_pass_students, top_level, second_level, third_level,[] if students.empty?

  return total_num_of_pass_students, top_level, second_level, third_level, students 
end


total_num_of_pass_students, top_level, second_level, third_level, others = solution()

def sort_students( students)
  students.sort_by {|student| [ -( student.de_socre + student.cai_socre),-student.de_socre,student.num]}
end

top_level = sort_students( top_level)
second_level = sort_students( second_level)
third_level = sort_students( third_level)
others = sort_students( others)

def Output(students)
  students.each do |student|
    print student.num,' ',student.de_socre,' ',student.cai_socre
    puts
  end
end

puts total_num_of_pass_students
Output(top_level)
Output(second_level)
Output(third_level) 
Output(others) 

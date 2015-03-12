class Student
  def initialize(name,num,grade)
    @name = name
    @num = num
    @grade = grade
  end
end
students = Hash.new
lines = Integer(gets)
lines.times do 
  line = gets
  name,num,grade = line.split()
  grade = Integer(grade)
  students[grade] = [name,num]
end
sorted = students.sort_by {|grade,name| grade}
print sorted[-1][1][0],' ',sorted[-1][1][1]
puts 
print sorted[0][1][0], ' ', sorted[0][1][1]

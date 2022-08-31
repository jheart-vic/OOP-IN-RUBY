require './classes/teacher'

class CreateTeacher
  def initialize(people)
    @people = people
  end

  def create_teacher
    print 'Enter teacher name: '
    name = gets.chomp
    print 'Enter teacher age: '
    age = gets.chomp
    print 'Enter teacher specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(specialization, age, name)
    @persons.push(teacher)
    puts 'Teacher created successfully'
  end
end

require './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, name, age, parent_permission: true)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.animals.push(self) unless classroom.animals.include?(self)
  end
end

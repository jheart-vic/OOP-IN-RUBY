require './classes/person'

class Teacher < Person
  attr_reader :specialization
  def initialize(id, age, name, specialization)
    super(age, name)
    @id = id || Random.rand(1..1000)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end

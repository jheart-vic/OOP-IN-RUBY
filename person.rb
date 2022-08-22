class Person
  attr_reader :id
  attr_accessor :age, :name

  def initialize(age, name)
    @id = DateTime.now
    @name = name
    @age = age
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age?
  end

  private :of_age
  public :can_use_services
end

class Person
  attr_reader :id
  attr_accessor :age, :name

  def initialize(age, name = "Unknown", parent_permission: true)
    @id = DateTime.now
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private :of_age
  public :can_use_services
end

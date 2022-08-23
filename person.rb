class Person < Nameable
  attr_reader :id
  attr_accessor :age, :name

  def initialize(age, name = `unknown`, parent_permission: true)
    super()
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

person = Person.new(22, `maximilianus`)
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmedperson = TrimmerDecorator.new(capitalized_person)
capitalized_trimmedperson.correct_name

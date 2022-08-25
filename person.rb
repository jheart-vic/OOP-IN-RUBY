require './nameable'
require './rentals'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :age, :name

  def initialize(age, name = `unknown`, parent_permission: true)
    super()
    @id = Time.now.to_f
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    name
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
capitalized_trimmed_person.correct_name

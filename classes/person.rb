require './classes/nameable'
require './classes/rentals'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :age, :name, :parent_permission

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
    # return true if of_age? || parent_permission

    # false
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

require './classes/base_decorator'

class CapitalizeDecorator < Decorator
  def initialize(nameable = Nameable.new)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name.capitalize
  end
end

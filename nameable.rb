class Nameable
  def correct_name
    raise NotImplementedError
  end
end

class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
    Nameable.correct_name(@nameable)
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.strip
  end
end

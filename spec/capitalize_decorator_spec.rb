require './classes/capitalize_decorator'
require './classes/person'

describe CapitalizeDecorator do
  context 'Test CapitalizeDecorator class' do
    it 'should return Ali' do
      person = Person.new(24, 'ali')
      capitalizer = CapitalizeDecorator.new(person)
      expect(capitalizer.correct_name).to eq 'Ali'
    end
  end
end

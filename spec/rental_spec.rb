require './classes/rentals'
require './classes/book'
require './classes/person'

describe Rental do
  context 'test rental class' do
    book = Book.new(nil, 'Becoming', 'Mechael Obama')
    person = Person.new(24, 'Victor')

    rental = Rental.new('2022-05-13', book, person)
    it 'Book title should return Becoming' do
      expect(rental.book.title).to eq 'Becoming'
    end
    it 'Person name should return Victor' do
      expect(rental.person.name).to eq 'Victor'
    end
  end
end

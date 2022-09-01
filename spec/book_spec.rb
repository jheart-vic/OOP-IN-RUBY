require './classes/book'
require './classes/person'
require './classes/rentals'

describe Book do
  context 'test book class' do
    book = Book.new(nil, 'Becoming', 'Mechael Obama')
    person = Person.new(24, 'Victor')
    rental = Rental.new('2022-05-13', book, person)
    it 'Book title should return Victor' do
      expect(rental.person.name).to eq 'Victor'
    end
    it 'Book title should return Becoming' do
      expect(book.title).to eq 'Becoming'
    end
    it 'Book author should return Mechael Obama' do
      expect(book.author).to eq 'Mechael Obama'
    end
  end
end

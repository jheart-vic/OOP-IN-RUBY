require './classes/person'
require './classes/rentals'
require './classes/book'

describe Person do
  context 'test Person class' do
    person = Person.new(24, 'Mechael Obama')
    person2 = Person.new(24)
    book = Book.new(nil, 'Becoming', 'Mechael Obama')
    rental = Rental.new('2022-05-13', book, person)
    it 'Book title should return Becoming' do
      expect(rental.book.title).to eq 'Becoming'
    end
    it 'Person age should return 24' do
      expect(person.age).to eq 24
    end
    it 'Person name should return Mechael Obama' do
      expect(person.name).to eq 'Mechael Obama'
    end
    it 'Person correct_name should return Mechael Obama' do
      expect(person.correct_name).to eq 'Mechael Obama'
    end
    it 'Person can_use_service should return Mechael Obama' do
      expect(person.can_use_services?).to be true
    end
    it 'Person of_age should return true' do
      expect(person.send(:of_age?)).to be true
    end
    it 'Person name should return Mechael Obama' do
      expect(person2.name).to eq 'unknown'
    end
    it 'Person parent_permission should return true' do
      expect(person.parent_permission).to be true
    end
  end
end

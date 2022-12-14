require 'json'
require './classes/rentals'

module RentalStore
  def load_rentals
    rental_store = []
    rent_file = open('./data/rentals.json')
    if File.exist?(rent_file) && File.read(rent_file) != ''
      data = rent_file.read
      JSON.parse(data).each do |rental|
        rental_store << Rental.new(rental['date'], book(rental['book_id']), person(rental['person_id']))
      end
    else
      File.write(rent_file, '[]')
    end
    rental_store
  end

  def save_rental_data
    rental_store = []
    @rentals.each do |rental|
      rental_store << { date: rental.date, person_id: rental.person.id, book_id: rental.book.id }
    end
    File.write('./data/rentals.json', rental_store.to_json)
  end

  private

  def person(id)
    @people.each { |per| return per if per.id == id }
  end

  def book(id)
    @books.each { |bk| return bk if bk.id == id }
  end
end

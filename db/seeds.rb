# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
    book_title = Faker::Book.title
    book_author = Faker::Name.name_with_middle
    book_status = rand(0..1)
    book_given_date = Faker::Date.between(from: '2014-09-23', to: '2014-09-25')
    book_returned_date = Faker::Date.between(from: '2020-09-23', to: '2020-09-25')
    Book.create(title:book_title, author:book_author, status:book_status, given:book_given_date, returned:book_returned_date)
end
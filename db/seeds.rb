# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
25.times do
  real_text = []
  10.times do
    text = Faker::Lorem.paragraphs(number: 20)
    text = text.join('')
    real_text << ' ' + text + "\n"
  end
  real_text = real_text.join('')
  new_article = Article.new(
    title: Faker::TvShows::Friends.quote,
    content: real_text
  )
  new_article.save
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Card.all.destroy_all
Collection.all.destroy_all
CardCollection.all.destroy_all

cards = Card.create([
  {word: 'مرحباً', translation: '', definition: 'Hello'},
  {word: 'طائر', translation: '', definition: 'Bird'},
  {word: 'مطبخ', translation: '', definition: 'Kitchen'},
  {word: 'سيارة', translation: '', definition: 'Car'},
  {word: 'يطبخ', translation: '', definition: 'To cook (verb)'},
  {word: 'فاكهة', translation: '', definition: 'Fruit'},
  {word: 'يذهب', translation: '', definition: 'To go (verb)'},
  {word: 'يسافر', translation: '', definition: 'To travel (verb)'},
  {word: 'Apple', translation: '', definition: 'A common fruit, with a crisp crunch.'},
  {word: 'pear', translation: '', definition: 'A sweet fruit found in various regions.'},
  {word: 'orange', translation: '', definition: 'A citrus fruit that is common in the Mediterranian and tropical climates.'},
  {word: 'kiwi', translation: '', definition: 'A furry fruit with a green firm yet soft jelly centre. The fur can irritate the tongue.'},
  {word: 'Starfruit', translation: '', definition: 'A fruit named after the shape. Not commonly found in Northern and Western Europe.'},
  {word: 'Mango', translation: '', definition: 'A very popular fruit in Asia, Africa and the Tropical belt. Very sweet.'},
  {word: 'Pineapple', translation: '', definition: 'A popular fruit found within the Tropical belt.'},
  {word: 'Guava', translation: '', definition: 'Another fruit common and popular in Asia and the Tropics.'},
  {word: 'Tangerine', translation: '', definition: 'On of the many relatives to the Orange. Smaller, softer and flatter than its famous cousin. Found widely over europe.'}]
)

collections = Collection.create([{name: 'Arabic'}])

Collection.first.cards << Card.first
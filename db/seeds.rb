# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create!([{name: "いちご", price: 290, genre: "果物"},
  {name: "サファイア", price: 900, genre: "宝石"},
  {name: "バナナ", price: 180, genre: "果物"},
  {name: "白ワンピース", price: 1300, genre: "衣類"},
  {name: "靴下2足", price: 180, genre: "衣類"}])

3.times do |n|
  Product.create!(name: "テスト商品#{n+1}", price: (n+1)*100, genre: "テスト商品")
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(
    email: "a.y.archery0927@gmail.com",
    password: "yuuki0927",
    password_confirmation: "yuuki0927",
    )

# seedsを新規で登録する場合は｢$ rails db:seed｣
# あとから追記する場合は｢$ bin/rails db:migrate:reset｣した後にもう一度｢$ rails db:seed｣
Genre.create([
    { name: '冷蔵庫' },
    { name: '洗濯機' },
    { name: 'エアコン' },
    { name: 'TV' },
    ])
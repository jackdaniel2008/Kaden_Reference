# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(
    email: "admin@admin.com",
    password: "admin1234",
    password_confirmation: "admin1234",
    )

User.create(
    last_name: "テスト",
    first_name: "太郎",
    user_name: "テストユーザー",
    age: "30",
    gender: "male",
    family: "◯人家族",
    email: "test@test.com",
    password: "test1234",
    password_confirmation: "test1234",
    )

item = Item.create(
    name: "ABCD-EFG(冷蔵庫の型番)",
    introduction: "片開きの冷蔵庫。冷凍室や野菜室などバランス良く搭載されており、使いやすさ重視。",
    )

item.image.attach(
    io: File.open(Rails.root.join('./db/fixtures/reizouko.jpg')),
    filename: 'reizoko.jpg')

# seedsを新規で登録する場合は｢$ rails db:seed｣
# あとから追記する場合は｢$ bin/rails db:migrate:reset｣した後にもう一度｢$ rails db:seed｣
Genre.create([
    { name: '冷蔵庫' },
    { name: '洗濯機' },
    { name: 'エアコン' },
    { name: 'TV' },
    ])

Size.create([
    { name: '100L以下' },
    { name: '101L～150L' },
    { name: '151L～200L' },
    { name: '201L～250L' },
    { name: '251L～300L' },
    { name: '301L～350L' },
    { name: '351L～400L' },
    { name: '401L～450L' },
    { name: '451L～500L' },
    { name: '501L～550L' },
    { name: '551L～600L' },
    { name: '651L以上' },
    { name: '4.5kg～5.5kg' },
    { name: '6kg～6.5kg' },
    { name: '7kg' },
    { name: '8kg' },
    { name: '9kg' },
    { name: '10kg' },
    { name: '11kg' },
    { name: '12kg' },
    { name: '6畳用' },
    { name: '8畳用' },
    { name: '10畳用' },
    { name: '12畳用' },
    { name: '14畳用' },
    { name: '16畳用' },
    { name: '18畳用' },
    { name: '20畳用' },
    { name: '22畳用' },
    { name: '24畳用' },
    { name: '26畳用以上' },
    { name: '22インチ以下' },
    { name: '24インチ' },
    { name: '32インチ' },
    { name: '40インチ' },
    { name: '42～43インチ' },
    { name: '48～50インチ' },
    { name: '55インチ' },
    { name: '60インチ' },
    { name: '65インチ' },
    { name: '70インチ以上' },
    ])

People.create([
    { name: '1～2人向け' },
    { name: '2～3人向け' },
    { name: '3～4人向け' },
    { name: '4～5人向け' },
    { name: '5～6人向け' },
    ])

Maker.create([
    { name: 'パナソニック' },
    { name: '日立' },
    { name: '東芝' },
    { name: '三菱' },
    { name: 'ソニー' },
    { name: 'アクア' },
    { name: 'アイリスオーヤマ' },
    { name: 'ダイキン' },
    { name: 'シャープ' },
    { name: 'プライベートブランド' },
    { name: 'その他' },
    ])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#for test - by weiqi
=begin
User.create!(username:  "Weiqi Zhang",
             email: "zhangweiqi357@gmail.com",
             password:              "597dF12@@489",
             password_confirmation: "597dF12@@489",
             reg_time: "2014-02-02",
             phone: "8383838",
             activated: true,
             activated_at: Time.zone.now)


User.create!(username:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             reg_time: "2014-02-02",
             phone: "8383838",
             activated: true,
             activated_at: Time.zone.now)
=end

User.create!(username:  "Example User",
             email: "example@ucsd.edu",
             password:              "foobar",
             password_confirmation: "foobar",
             reg_time: "2014-02-02",
             phone: "8383838",
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@ucsd.edu"
  password = "password"
  User.create!(username:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               reg_time: "2014-02-02",
               phone: "8383838",
               activated: true,
               activated_at: Time.zone.now)
end

Category.create!(name: "Clothes")
Category.create!(name: "Furnitures")
Category.create!(name: "Books")
Category.create!(name: "Others")

#for test - by weiqi
Item.create!(title: "Everything",
             description: "descritpion",
             timeout: Time.zone.now,
             is_valid: true,
             lat: 11.112,
             lng: 32.32,
             post_date: Time.zone.now,
             user_id: "1",
             category_id: 1,
             address: "Gilman Drive",
             avatar: open("public/uploads/abc.jpg")
)



100.times do |n|
  title = Faker::Name.name
  descritpion = "aslfdaslkdfjaslfjaslkfjaslfjsa"
  Item.create!(title: title,
               description: descritpion,
               timeout: Time.zone.now,
               is_valid: true,
               lat: 11.112,
               lng: 32.32,
               post_date: Time.zone.now,

               user_id: n + 1,
               category_id: 1,
               address: "Gilman Drive",
               avatar: open("public/uploads/abc.jpg")
  )
end

#for test - weiqi
Dib.create!(
    item_id: 1,
    user_id: 4
)
Dib.create!(
    item_id: 1,
    user_id: 5
)
Dib.create!(
    item_id: 1,
    user_id: 7
)

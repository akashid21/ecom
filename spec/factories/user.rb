FactoryBot.define do
  factory :user do
    name { 'abhijeet' }
    age { 23 }
    email { Faker::Internet.email }
    addres { 'dasdasdasdasdasda' }
    password { '123456' }
    role { 'user' }
  end
end

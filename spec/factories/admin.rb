FactoryBot.define do
  factory :admin do
    name { 'abhijeet' }
    age { 23 }
    email { Faker::Internet.email }
    addres { 'dasdasdasdasdasda' }
    password { '123456' }
    role { 'admin' }
  end
end

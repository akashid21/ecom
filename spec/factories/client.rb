FactoryBot.define do
  factory :client do
    name { 'abhijeet' }
    age { 23 }
    email { Faker::Internet.email }
    addres { 'dasdasdasdasdasda' }
    password { '123456' }
    role { 'client' }
  end
end

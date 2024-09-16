FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph(sentence_count: 1) }
    price { Faker::Commerce.price(range: 1..10) }
    category { 'Perfume' }
    # Faker::Commerce.department(max: 1)
  end
end

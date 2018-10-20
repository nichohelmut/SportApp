FactoryBot.define do
  factory :user do
    email Faker::Internet.email
    password Faker::Internet.password
    role 'customer'
  end
end
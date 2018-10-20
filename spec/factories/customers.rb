FactoryBot.define do
  factory :customer do
    name Faker::Football.player
    email Faker::Internet.email
  end

  # trait :with_user do
  #   association :user
  # end
end
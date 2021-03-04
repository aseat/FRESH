FactoryBot.define do
  factory :response do
    text { Faker::Lorem.sentence }
    user_id { FactoryBot.create(:user).id }
    answer_id { FactoryBot.create(:answer).id }
  end
end

FactoryBot.define do
  factory :answer do
    category_id { 3 }
    title { Faker::Lorem.sentence }
    question { Faker::Lorem.sentence }
    user_id { FactoryBot.create(:user).id }
    after(:build) do |answer|
      answer.image.attach(io: File.open('app/assets/images/staff3.jpg'), filename: 'staff3.jpg')
    end
  end
end

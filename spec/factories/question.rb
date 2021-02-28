FactoryBot.define do
  factory :question do
    category_id { 3 }
    problem { Faker::Lorem.sentence }
    commentary { Faker::Lorem.sentence }
    answerd_id { 2 }
    user_id { FactoryBot.create(:user).id }
    after(:build) do |question|
      question.image.attach(io: File.open('app/assets/images/staff3.jpg'), filename: 'staff3.jpg')
    end
  end
end

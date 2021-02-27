FactoryBot.define do
  factory :word do
    word { Faker::Name.initials }
    yomi { 'あああああ' }
    mean { Faker::Lorem.sentence }
    user_id { FactoryBot.create(:user).id }
  end
end

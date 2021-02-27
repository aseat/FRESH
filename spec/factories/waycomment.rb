FactoryBot.define do
  factory :waycomment do
    text { 'ああああ' }
    user_id { FactoryBot.create(:user).id }
    way_id { FactoryBot.create(:way).id }
  end
end

FactoryBot.define do
  factory :choice do
      choose_id { 3 }
      user_id { FactoryBot.create(:user).id }
      question_id { FactoryBot.create(:question).id }
  end
end

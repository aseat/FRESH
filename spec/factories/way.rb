FactoryBot.modify do
  factory :way do
    nickname { Faker::Name.initials }
    email { Faker::Internet.free_email }
    password = Faker::Internet.password(min_length: 6) 
    password {password}
    password_confirmation {password}
    text { 'ああああ' }
  end
end
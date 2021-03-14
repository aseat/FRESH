FactoryBot.define do
  factory :user do
    nickname { Faker::Name.initials }
    email { Faker::Internet.free_email }
    password = Faker::Internet.password(min_length: 6)
    password { password }
    password_confirmation { password }
    text { 'ああああ' }

    after(:build) do |user|
      user.image.attach(io: File.open('app/assets/images/staff3.jpg'), filename: 'staff3.jpg')
    end
  end
end

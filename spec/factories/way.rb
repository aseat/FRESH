FactoryBot.define do
  factory :way do
    name { Faker::Name.initials }
    text { 'ああああ' }
    user_id { FactoryBot.create(:user).id }

    after(:build) do |way|
      way.image.attach(io: File.open('app/assets/images/staff3.jpg'), filename: 'staff3.jpg')
      way.video.attach(io: File.open('app/assets/images/Pexels Videos 2248564.mp4'), filename: 'Pexels Videos 2248564.mp4')
    end
  end
end

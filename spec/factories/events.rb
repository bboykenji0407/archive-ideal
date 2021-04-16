FactoryBot.define do
  factory :event do
    name        {"hoge"} 
    remarks {Faker::Lorem.sentence}
    start_time {}
    association :user

    after(:build) do |event|
     event.image.attach(io: File.open('app/assets/images/image.jpg'), filename: 'image.jpg')
    end
  end
end


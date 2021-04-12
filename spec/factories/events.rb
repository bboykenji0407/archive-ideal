FactoryBot.define do
  factory :event do
    name        {"hoge"} 
    remarks {Faker::Lorem.sentence}
    start_time {}
    after(:build) do |event|
      event.image.attach(io: File.open('public/assets/images/image.jpg'), filename: 'test_image.png')
    end
  end
end


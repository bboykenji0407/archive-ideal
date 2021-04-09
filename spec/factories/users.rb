FactoryBot.define do
  factory :user do
    name                   { Faker::Name.initials(number: 2) }
    email                  { Faker::Internet.free_email }
    password               { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation  { password }
    age               { '99' }
    tell_num          { '08012345678' }
  end
end

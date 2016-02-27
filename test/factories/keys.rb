FactoryGirl.define do
  factory :key do
    sequence :id
    code Key::VALID_CODES[0]
  end
end

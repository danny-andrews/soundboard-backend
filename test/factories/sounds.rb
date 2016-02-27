FactoryGirl.define do
  factory :sound do
    sequence :id
    sequence :display_name do |n|
      "Woh#{n}"
    end
    sequence :filename do |n|
      "Woh#{n}.mp3"
    end
    sequence :uuid
  end
end

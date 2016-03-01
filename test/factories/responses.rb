FactoryGirl.define do
  factory :response, class: Commands::Response do
    body ''
    code 200
  end
end

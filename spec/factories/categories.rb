FactoryBot.define do
  factory :category do
    title      {"test"}
    association :user
  end
end

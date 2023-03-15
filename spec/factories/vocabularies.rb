FactoryBot.define do
  factory :vocabulary do
    title         {"test"}
    meaning       {"test"}
    association :category
  end
end

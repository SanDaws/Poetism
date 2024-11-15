FactoryBot.define do
  factory :comment do
    Publication { nil }
    Writer { nil }
    comment { "MyText" }
  end
end

FactoryBot.define do
  factory :publication do
    title { "MyString" }
    publicaiton_text { "MyText" }
    tags { "MyText" }
    Category { nil }
    Writer { nil }
  end
end

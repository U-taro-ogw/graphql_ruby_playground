FactoryBot.define do
  factory :task do
    user
    description { "MyString" }
    completed { false }
  end
end

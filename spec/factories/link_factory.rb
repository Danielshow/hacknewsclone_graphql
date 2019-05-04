FactoryBot.define do
  factory :link do
    sequence(:url) { |n| "www.dan#{n}.com" }
    sequence(:description) { |n| "Inam pon mu  #{n}" }
  end
end

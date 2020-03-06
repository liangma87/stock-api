require 'date'

FactoryBot.define do

  factory :company do
    symbol { "JWN" }
    name { "Nordstrom" }
  end

  factory :todo do
    notes { "This is default notes" }
    date { Date.new(2001,2,3) }
    company_id {1}
    user_id {1}
  end

  factory :thought do
    notes {"This is default notes"}
    title {"This is default title"}
    company_id {1}
  end
end
require 'date'

FactoryBot.define do
  factory :company do
    symbol { "JWN" }
    name { "Nordstrom" }
  end

  factory :todo do
    notes { "This is an example" }
    completion_date { Date.new(2001,2,3) }
    company_id {1}
    user_id {1}
  end
end
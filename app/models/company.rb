class Company < ApplicationRecord
  has_many  :ohlc_prices
  has_many  :todos
  has_many  :thoughts
end

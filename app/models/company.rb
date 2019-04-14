class Company < ApplicationRecord
  has_many  :ohlc_prices
  has_many  :todos
end

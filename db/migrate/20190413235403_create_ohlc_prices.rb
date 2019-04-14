class CreateOhlcPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :ohlc_prices do |t|
      t.float "open"
      t.float "high"
      t.float "low"
      t.float "close"
      t.integer "volume"
      t.float "uOpen"
      t.float "uHigh"
      t.float "uLow"
      t.float "uClose"
      t.integer "uVolume"
      t.date "date"
      t.timestamps
    end
  end
end

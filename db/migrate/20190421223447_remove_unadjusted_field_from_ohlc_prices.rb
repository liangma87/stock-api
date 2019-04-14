class RemoveUnadjustedFieldFromOhlcPrices < ActiveRecord::Migration[5.2]
  def change
    remove_column :ohlc_prices, :uOpen
    remove_column :ohlc_prices, :uHigh
    remove_column :ohlc_prices, :uLow
    remove_column :ohlc_prices, :uClose
    remove_column :ohlc_prices, :uVolume
  end
end

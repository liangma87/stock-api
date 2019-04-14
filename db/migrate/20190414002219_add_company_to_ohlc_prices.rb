class AddCompanyToOhlcPrices < ActiveRecord::Migration[5.2]
  def change
    add_column :ohlc_prices, :company_id, :integer
    add_index :ohlc_prices, :company_id
  end
end

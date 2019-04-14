class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :symbol
      t.string :name
      t.string :exchange
      t.string :industry
      t.string :website
      t.string :description
      t.string :issueType
      t.string :sector
      t.text :tags, array: true, default: []
      t.timestamps
    end
  end
end

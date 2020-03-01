class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.text "notes"
      t.integer "company_id"
      t.timestamps
    end
  end
end

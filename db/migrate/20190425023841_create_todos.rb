class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text "notes"
      t.date "completion_date"
      t.integer "company_id"
      t.timestamps
    end
  end
end
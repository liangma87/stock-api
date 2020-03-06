class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :todos, :completion_date, :date
  end
end

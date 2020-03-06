class ChangeTableNameFromDiariesToThoughts < ActiveRecord::Migration[5.2]
  def change
    rename_table :diaries, :thoughts
  end
end

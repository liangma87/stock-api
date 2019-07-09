class DropJwtBlacklistsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :jwt_blacklists
  end
end

class AddForeignKeyToFunks < ActiveRecord::Migration
  def change
    add_column :funks, :user_id, :integer
  end
end

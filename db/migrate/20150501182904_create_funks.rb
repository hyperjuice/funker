class CreateFunks < ActiveRecord::Migration
  def change
    create_table :funks do |t|
      t.string :content, :length => 141

      t.timestamps null: false
    end
  end
end

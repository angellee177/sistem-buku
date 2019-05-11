class AlterBooks < ActiveRecord::Migration[5.2]
  def up
    change_column :books, :price, :float, null: true
  end

  def down
    change_column :books, :price, :float, null: false
  end
end

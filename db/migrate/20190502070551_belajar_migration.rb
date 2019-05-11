class BelajarMigration < ActiveRecord::Migration[5.2]
  def up
    create_table :books do |t|
      t.string   :title, default:'Belum Ada Judul', limit:100
      t.float    :price, null: false
      t.integer  :page, default: 0
      t.text     :description
    end
  end

  def down
    drop_table :books
  end
end

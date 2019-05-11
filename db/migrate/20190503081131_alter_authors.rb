class AlterAuthors < ActiveRecord::Migration[5.2]
  def up
    rename_column :authors, :age, :old #mengubah nama kolom menggunakan "Rename_Column"
    change_column :authors, :name, :string, limit:100 #tipe data kolom perlu di cantumkan
  end

  def down
    change_column :authors, :name, :string, limit:50
    rename_column :authors, :old, :age #mengubah nama kolom menggunakan "Rename_Column"
  end
end

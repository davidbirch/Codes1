class AddSlugToDivisions < ActiveRecord::Migration
  def change
    add_column :divisions, :slug, :string
    add_index :divisions, :slug  

  end
end

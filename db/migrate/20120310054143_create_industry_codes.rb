class CreateIndustryCodes < ActiveRecord::Migration
  def change
    create_table :industry_codes do |t|
      t.string :division_code
      t.string :division_description
      t.string :subdivision_code
      t.string :subdivision_description
      t.string :group_code
      t.string :group_description
      t.string :class_code
      t.string :class_description
      t.string :primary_activity

      t.timestamps
    end
  end
end

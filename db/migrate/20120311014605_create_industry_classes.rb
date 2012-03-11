class CreateIndustryClasses < ActiveRecord::Migration
  def change
    create_table :industry_classes do |t|
      t.string :code
      t.string :description
      t.string :group_code
      t.integer :group_id

      t.timestamps
    end
  end
end

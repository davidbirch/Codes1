class CreatePrimaryActivities < ActiveRecord::Migration
  def change
    create_table :primary_activities do |t|
      t.string :description
      t.string :industry_class_code
      t.integer :industry_class_id

      t.timestamps
    end
  end
end

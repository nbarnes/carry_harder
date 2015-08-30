class CreateChassis < ActiveRecord::Migration
  def change
    create_table :chassis do |t|
      t.string :chassis_designation
      t.timestamps null: false
    end
  end
end

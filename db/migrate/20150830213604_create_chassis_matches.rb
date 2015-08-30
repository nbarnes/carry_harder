class CreateChassisMatches < ActiveRecord::Migration
  def change
    create_table :chassis_matches do |t|
      t.integer :chassis_id
      t.integer :match_id

      t.timestamps null: false
    end

    add_index :chassis_matches, :chassis_id
    add_index :chassis_matches, :match_id
  end
end

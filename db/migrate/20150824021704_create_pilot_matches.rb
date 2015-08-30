class CreatePilotMatches < ActiveRecord::Migration

  # rubocop:disable MethodLength
  def change
    create_table :pilot_matches, id: false do |t|
      t.integer :pilot_id
      t.integer :match_id
      t.integer :chassis_id
      t.integer :alive?
      t.integer :match_score
      t.integer :kills
      t.integer :assists
      t.integer :damage_done
    end
    add_index :pilot_matches, :pilot_id
    add_index :pilot_matches, :match_id
  end
  # rubocop:enable MethodLength

end

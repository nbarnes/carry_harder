class CreateScreenshots < ActiveRecord::Migration

  def change
    create_table :screenshots do |t|
      t.integer :match_id
      t.string :image, null: false

      t.string :map_name_slice
      t.string :game_mode_slice
      t.string :battle_duration_slice
    end
  end

end

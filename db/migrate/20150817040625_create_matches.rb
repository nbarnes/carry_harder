class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :map_name
      t.string :game_mode
      t.string :battle_duration
      t.string :red_team_score
      t.string :blue_team_score
      t.timestamps null: false
    end
  end
end

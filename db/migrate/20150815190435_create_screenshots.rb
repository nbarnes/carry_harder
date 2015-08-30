class CreateScreenshots < ActiveRecord::Migration

  def change
    create_table :screenshots do |t|
      t.integer :match_id
      t.string :image, null: false

      t.string :thumbnail

      t.string :map_name_slice
      t.string :game_mode_slice
      t.string :battle_duration_slice

      t.string :blue_team_score_slice
      t.string :red_team_score_slice

      # t.string :red_team_alpha_player_1
      # t.string :red_team_alpha_player_2
      # t.string :red_team_alpha_player_3
      # t.string :red_team_alpha_player_4

      # t.string :red_team_bravo_player_1
      # t.string :red_team_bravo_player_2
      # t.string :red_team_bravo_player_3
      # t.string :red_team_bravo_player_4

      # t.string :red_team_charlie_player_1
      # t.string :red_team_charlie_player_2
      # t.string :red_team_charlie_player_3
      # t.string :red_team_charlie_player_4

      # t.string :blue_team_alpha_player_1
      # t.string :blue_team_alpha_player_2
      # t.string :blue_team_alpha_player_3
      # t.string :blue_team_alpha_player_4

      # t.string :blue_team_bravo_player_1
      # t.string :blue_team_bravo_player_2
      # t.string :blue_team_bravo_player_3
      # t.string :blue_team_bravo_player_4

      # t.string :blue_team_charlie_player_1
      # t.string :blue_team_charlie_player_2
      # t.string :blue_team_charlie_player_3
      # t.string :blue_team_charlie_player_4
    end
  end

end

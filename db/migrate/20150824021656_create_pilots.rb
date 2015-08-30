class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :callsign
    end
  end
end

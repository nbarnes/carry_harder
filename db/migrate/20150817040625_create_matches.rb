class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :map_name
      t.timestamps null: false
    end
  end
end

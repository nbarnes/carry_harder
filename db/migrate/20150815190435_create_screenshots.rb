class CreateScreenshots < ActiveRecord::Migration

  def change
    create_table :screenshots do |t|
      t.string :image, null: false
    end
  end

end

class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :released
      t.string :background_image

      t.timestamps
    end
  end
end

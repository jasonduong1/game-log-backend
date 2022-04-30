class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.integer :user_id
      t.integer :rating
      t.text :review
      t.text :note
      t.integer :game_id
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end

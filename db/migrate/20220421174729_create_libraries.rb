class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :rating
      t.text :review
      t.text :note

      t.timestamps
    end
  end
end

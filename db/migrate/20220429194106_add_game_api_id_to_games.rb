class AddGameApiIdToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :api_id, :integer
    add_column :games, :image, :string
    add_column :games, :rating, :integer
    add_column :games, :review, :text
    add_column :games, :note, :text
    
    remove_column :games, :released, :string
    remove_column :games, :background_image, :string
    
    remove_column :libraries, :rating, :integer
    remove_column :libraries, :review, :text
    remove_column :libraries, :note, :text

  end
end

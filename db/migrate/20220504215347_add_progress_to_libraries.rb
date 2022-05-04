class AddProgressToLibraries < ActiveRecord::Migration[7.0]
  def change
    add_column :libraries, :progress, :string
  end
end

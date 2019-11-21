class AddCoordinatesToPastels < ActiveRecord::Migration[5.2]
  def change
    add_column :pastels, :latitude, :float
    add_column :pastels, :longitude, :float
  end
end

class AddCoordinatesToInterests < ActiveRecord::Migration[7.0]
  def change
    add_column :interests, :latitude, :float
    add_column :interests, :longitude, :float
  end
end

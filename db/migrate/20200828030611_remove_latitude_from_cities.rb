class RemoveLatitudeFromCities < ActiveRecord::Migration[6.0]
  def change
    remove_column :cities, :latitude, :decimal
  end
end

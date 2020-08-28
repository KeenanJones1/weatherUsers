class RemoveLongitudeFromCities < ActiveRecord::Migration[6.0]
  def change
    remove_column :cities, :longitude, :decimal
  end
end

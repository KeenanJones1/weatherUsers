class RemoveStateFromCities < ActiveRecord::Migration[6.0]
  def change
    remove_column :cities, :state, :string
  end
end

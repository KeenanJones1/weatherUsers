class AddCitiesLimitToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cities_limit, :integer, :default => 4
  end
end

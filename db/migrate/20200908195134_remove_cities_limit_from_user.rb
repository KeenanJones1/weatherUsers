class RemoveCitiesLimitFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :cities_limit, :integer
  end
end

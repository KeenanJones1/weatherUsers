class AddKeyToCity < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :key, :string
  end
end

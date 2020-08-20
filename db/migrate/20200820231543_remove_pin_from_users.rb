class RemovePinFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :pin, :string
  end
end

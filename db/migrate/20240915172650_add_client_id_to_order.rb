class AddClientIdToOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :client_id, :integer
  end
end

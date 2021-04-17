class AddClomnCustomerUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :customer_users, :name, :string
  end
end

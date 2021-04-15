class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :name, :string
    add_column :customer_users, :department, :string
  end
end

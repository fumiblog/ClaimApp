class AddColumnUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :company, :string
    add_column :customers, :postal_code, :string
    add_column :customers, :address, :string
    add_column :customers, :telephone, :string
    add_column :admins, :company, :string
    add_column :admins, :postal_code, :string
    add_column :admins, :address, :string
    add_column :admins, :telephone, :string
  end
end

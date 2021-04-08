class CreateCustomerUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_users do |t|
      t.integer :customer_id
      t.string :company
      t.string :postal_code
      t.string :address
      t.string :telephone

      t.timestamps
    end
  end
end

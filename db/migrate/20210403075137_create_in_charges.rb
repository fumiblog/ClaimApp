class CreateInCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :in_charges do |t|
      t.integer :customer_id
      t.string :Department
      t.string :name
      t.string :telephone
      t.string :email
      t.string :postal_code
      t.string :address

      t.timestamps
    end
  end
end

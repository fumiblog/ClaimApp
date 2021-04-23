class AddColumnInCharges2 < ActiveRecord::Migration[6.1]
  def change
    add_column :in_charges, :customer_user_id, :integer
  end
end

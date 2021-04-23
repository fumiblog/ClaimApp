class ChangeColumnInCharges < ActiveRecord::Migration[6.1]
  def change
    remove_column :in_charges, :customeruser_id, :customer_user_id
  end
end

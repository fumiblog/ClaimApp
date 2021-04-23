class ChangeColumnEstimates < ActiveRecord::Migration[6.1]
  def change
    rename_column :estimates, :incharge_id, :in_charge_id
  end
end

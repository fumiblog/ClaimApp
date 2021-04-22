class RenameColumnInCharges < ActiveRecord::Migration[6.1]
  def change
    rename_column :in_charges, :Department, :department
  end
end

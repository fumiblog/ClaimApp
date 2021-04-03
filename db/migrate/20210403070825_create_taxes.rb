class CreateTaxes < ActiveRecord::Migration[6.1]
  def change
    create_table :taxes do |t|
      t.date :change_date
      t.integer :tax

      t.timestamps
    end
  end
end

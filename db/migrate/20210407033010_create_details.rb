class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.integer :estimate_id
      t.integer :genre_id
      t.string :product
      t.string :model
      t.integer :amount
      t.integer :unitprice
      t.string :remark
      t.text :general_remark

      t.timestamps
    end
  end
end

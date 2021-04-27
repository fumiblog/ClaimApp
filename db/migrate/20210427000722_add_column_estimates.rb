class AddColumnEstimates < ActiveRecord::Migration[6.1]
  def change
    add_column :estimates, :price, :integer
  end
end

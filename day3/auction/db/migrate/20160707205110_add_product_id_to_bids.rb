class AddProductIdToBids < ActiveRecord::Migration[5.0]
  def change
    change_column :bids, :product_id, :integer
  end
end

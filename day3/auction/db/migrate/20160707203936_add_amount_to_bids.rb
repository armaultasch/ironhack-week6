class AddAmountToBids < ActiveRecord::Migration[5.0]
  def change
    change_column :bids, :amount, :integer
  end
end

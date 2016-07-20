class AddUserIdToBids < ActiveRecord::Migration[5.0]
  def change
    change_column :bids, :user_id, :integer
  end
end

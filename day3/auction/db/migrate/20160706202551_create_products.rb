class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
    	t.integer :user_id
    	t.string :title
    	t.string :description
    	t.datetime :deadline

      t.timestamps
    end
  end
end

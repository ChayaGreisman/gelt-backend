class ChangeCategoryNullToTrue < ActiveRecord::Migration[6.0]
  def change
    change_column :transactions, :category_id, :bigint, null: true 
  end
end

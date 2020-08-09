class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.string :date
      t.string :description
      t.float :amount

      t.timestamps
    end
  end
end

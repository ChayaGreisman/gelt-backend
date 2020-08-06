class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :type
      t.string :acct_number
      t.string :routing_number
      t.string :bank
      t.float :balance

      t.timestamps
    end
  end
end

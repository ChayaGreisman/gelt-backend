class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :company
      t.string :bank
      t.string :bank_url
      t.string :crdit_type
      t.string :user_type
      t.integer :annual_fee
      t.boolean :best
      t.string :application_url
      t.string :img_url
      t.string :description

      t.timestamps
    end
  end
end

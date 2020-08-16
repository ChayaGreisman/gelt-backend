class CreateSavedCards < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_cards do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end

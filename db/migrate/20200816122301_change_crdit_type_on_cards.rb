class ChangeCrditTypeOnCards < ActiveRecord::Migration[6.0]
  def change
    rename_column :cards, :crdit_type, :credit_type
  end
end

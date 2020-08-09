class ChangeTypeColumnOnAccounts < ActiveRecord::Migration[6.0]
  def change
    rename_column :accounts, :type, :acct_type
  end
end

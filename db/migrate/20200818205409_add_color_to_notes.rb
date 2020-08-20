class AddColorToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :color, :string
    add_column :notes, :highlight, :string
  end
end

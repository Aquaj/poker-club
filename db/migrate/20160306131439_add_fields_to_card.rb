class AddFieldsToCard < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :color, :string
    add_column :cards, :value, :integer
  end
end

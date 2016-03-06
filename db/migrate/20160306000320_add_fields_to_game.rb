class AddFieldsToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :small_blind, :integer
    add_column :games, :players_num, :integer
    add_column :games, :comment, :string
  end
end

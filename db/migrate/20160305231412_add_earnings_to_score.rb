class AddEarningsToScore < ActiveRecord::Migration[5.0]
  def change
    add_column :scores, :earnings, :integer
  end
end

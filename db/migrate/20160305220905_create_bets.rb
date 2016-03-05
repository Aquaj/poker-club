class CreateBets < ActiveRecord::Migration[5.0]
  def change
    create_table :bets do |t|
      t.references :pot, foreign_key: true
      t.integer :value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

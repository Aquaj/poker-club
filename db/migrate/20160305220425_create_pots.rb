class CreatePots < ActiveRecord::Migration[5.0]
  def change
    create_table :pots do |t|
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end

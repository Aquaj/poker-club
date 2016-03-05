class CreatePlayingSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :playing_sessions do |t|
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

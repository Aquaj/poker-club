class AddWhosTurnIsItToGame < ActiveRecord::Migration[5.0]
  def change
    add_reference :games, :playing_session, foreign_key: true
  end
end

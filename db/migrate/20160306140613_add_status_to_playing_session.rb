class AddStatusToPlayingSession < ActiveRecord::Migration[5.0]
  def change
    add_column :playing_sessions, :status, :string
  end
end

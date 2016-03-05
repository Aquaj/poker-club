class PlayingSession < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_one :hand
end

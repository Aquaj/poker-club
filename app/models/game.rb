class Game < ApplicationRecord
  has_one :pot
  has_one :deck
  has_many :playing_sessions
  has_many :users, through: :playing_sessions
end

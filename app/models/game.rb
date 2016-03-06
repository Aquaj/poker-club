class Game < ApplicationRecord
  has_one :pot
  has_one :deck
  has_many :playing_sessions
  has_many :users, through: :playing_sessions

  validates :small_blind, presence: true
  validates :players_num, presence: true
end

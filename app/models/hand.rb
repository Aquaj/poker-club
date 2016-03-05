class Hand < ApplicationRecord
  belongs_to :playing_session
  has_many :cards, as: :card_collection
end

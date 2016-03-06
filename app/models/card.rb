class Card < ApplicationRecord
  Colors = ["♠", "♥", "♦", "♣"]

  belongs_to :card_collection

  validates :color, presence: true
  validates :color, inclusion: {in: Colors}
  validates :value, presence: true
  validates :value, numericality: { greater_than: 0, lesser_than: 13 }
end

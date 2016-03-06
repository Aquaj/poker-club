class Bet < ApplicationRecord
  belongs_to :pot
  belongs_to :user

  validates :value, presence: true
  validates :value, numericality: { greater_than: 0 }
end

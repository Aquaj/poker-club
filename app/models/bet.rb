class Bet < ApplicationRecord
  belongs_to :pot
  belongs_to :user
end

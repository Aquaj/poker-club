class Card < ApplicationRecord
  belongs_to :hand
  belongs_to :deck
end

class Result < ApplicationRecord
  belongs_to :history
  has_many :scores
end

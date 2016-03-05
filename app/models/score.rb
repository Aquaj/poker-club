class Score < ApplicationRecord
  belongs_to :result
  belongs_to :user

  validates :earnings, presence: true
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :playing_sessions
  has_many :bets
  has_many :friendships, foreign_key: "friend_a_id", dependent: :destroy
  has_many :friends, through: :friendships, source: "friend_b"
  has_one :history

  validates :username, presence: true

  def befriend(new_friend)
    self.friends << new_friend
    new_friend.friends << self
  end
end

class User < ApplicationRecord
  has_many :characters, foreign_key: 'player_id'
  has_many :campaigns
  has_many :messages
  has_secure_password

  validates :name, :username, :email, presence: true
  validates :username, uniqueness: true
  validates :username, format: {with: /\A\w+\z/i}

  validates :email, format: {with: /\A([a-zA-Z\.]|\d|\-)+\@.+\.(com|net|edu|org|biz)\z/i}
end

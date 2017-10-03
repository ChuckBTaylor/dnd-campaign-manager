class User < ApplicationRecord
  has_many :characters, foreign_key: 'player_id'
  has_many :campaigns, through: :characters
  has_many :campaigns
  has_secure_password 
end

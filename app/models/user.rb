class User < ApplicationRecord
  has_many :characters, foreign_key: 'player_id'
end

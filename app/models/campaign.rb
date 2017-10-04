class Campaign < ApplicationRecord
  has_many :characters
  has_many :users, through: :characters
  belongs_to :user
  has_many :messages

  validates :name, presence: true
end

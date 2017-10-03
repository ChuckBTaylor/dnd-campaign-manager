class Campaign < ApplicationRecord
  has_many :characters
  has_many :users, through: :characters
  belongs_to :user

  validates :name, presence: true
end

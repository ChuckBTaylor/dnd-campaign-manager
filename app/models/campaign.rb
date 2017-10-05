class Campaign < ApplicationRecord
  has_and_belongs_to_many :characters
  belongs_to :user
  has_many :messages
  has_many :notes

  validates :name, presence: true
end

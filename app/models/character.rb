class Character < ApplicationRecord
  belongs_to :player, class_name: "User"
  belongs_to :campaign
  has_and_belongs_to_many :spells

  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, numericality: {only_integer: true, greater_than_or_equal_to: 3, less_than_or_equal_to: 20}
end

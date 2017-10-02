class Character < ApplicationRecord
  belongs_to :player, class_name: "User"
  has_and_belongs_to_many :spells

end

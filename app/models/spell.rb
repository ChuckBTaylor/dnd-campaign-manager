class Spell < ApplicationRecord
  has_and_belongs_to_many :characters
end
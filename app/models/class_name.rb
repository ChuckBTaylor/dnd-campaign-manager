class ClassName < ApplicationRecord
  has_and_belongs_to_many :spells
  has_many :characters
end

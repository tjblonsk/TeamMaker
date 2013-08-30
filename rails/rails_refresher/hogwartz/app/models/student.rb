class Student < ActiveRecord::Base
  has_and_belongs_to_many :spells
  belongs_to :house
end

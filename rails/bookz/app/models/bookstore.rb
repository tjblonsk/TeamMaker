class Bookstore < ActiveRecord::Base
  has_and_belongs_to_many :books
  attr_accessible :name, :address
end
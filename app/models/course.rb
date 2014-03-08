class Course < ActiveRecord::Base
  attr_accessible :description, :name, :price
  has_many :grades
  has_many :students, :through => :grades
end
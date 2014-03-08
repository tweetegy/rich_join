class Student < ActiveRecord::Base
  attr_accessible :dob, :first_name, :last_name
  has_many :grades
  has_many :courses, :through => :grades

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
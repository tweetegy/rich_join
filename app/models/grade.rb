class Grade < ActiveRecord::Base
  attr_accessible :percentage, :course_id, :student_id
  belongs_to :student
  belongs_to :course

  delegate :full_name, :to => :student, :prefix => true, :allow_nil => true
end

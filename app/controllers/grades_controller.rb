class GradesController < ApplicationController
  def edit
    @grades = Grade.find_all_by_course_id(params[:id])
  end

  def update
    grades = params[:students][:grade]
    Grade.update(grades.keys, grades.values)
  end
end
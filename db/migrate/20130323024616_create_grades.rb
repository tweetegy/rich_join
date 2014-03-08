class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :percentage
      t.integer :student_id
      t.integer :course_id

      t.timestamps
    end
  end
end
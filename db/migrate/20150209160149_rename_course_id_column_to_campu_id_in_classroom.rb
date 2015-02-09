class RenameCourseIdColumnToCampuIdInClassroom < ActiveRecord::Migration
  def change
    rename_column :classrooms, :course_id, :campu_id
  end
end

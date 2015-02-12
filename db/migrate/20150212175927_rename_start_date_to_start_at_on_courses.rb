class RenameStartDateToStartAtOnCourses < ActiveRecord::Migration
  def change
    rename_column :courses, :start_date, :start_at
    rename_column :courses, :end_date, :end_at
  end
end

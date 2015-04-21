class CreateCreateCourses < ActiveRecord::Migration
  def change
    create_table :create_courses, :id => false do |t|
    	t.references :student
    	t.references :course
    	t.date "create_date"
      t.timestamps null: false
    end
    add_index :create_courses, ["student_id", "course_id"]
  end
end

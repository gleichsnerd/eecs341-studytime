class CreateCoursesForCoursesJoin < ActiveRecord::Migration
  def change
    create_table :courses_for_courses, :id => false do |t|
    	t.integer "course_id"
    	t.integer "for_course_id"
    end
    add_index :courses_for_courses, ["course_id", "for_course_id"]
  end
end

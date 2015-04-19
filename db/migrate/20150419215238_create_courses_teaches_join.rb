class CreateCoursesTeachesJoin < ActiveRecord::Migration
  def change
    create_table :courses_teaches, :id => false do |t|
    	t.integer "course_id"
    	t.integer "teach_id"
    end
    add_index :courses_teaches, ["course_id", "teach_id"]
  end
end

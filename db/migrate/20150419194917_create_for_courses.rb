class CreateForCourses < ActiveRecord::Migration
  def change
    create_table :for_courses do |t|

    	t.integer "gid", :null => false
    	t.integer "cid", :null => false
      t.timestamps null: false
    end
  end
end

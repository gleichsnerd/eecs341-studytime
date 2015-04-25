class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	
    	#t.integer "cid", :null => false
    	t.string "cname"
    	
      t.timestamps null: false
    end
  end
end

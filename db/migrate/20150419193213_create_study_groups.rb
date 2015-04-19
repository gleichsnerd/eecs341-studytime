class CreateStudyGroups < ActiveRecord::Migration
  def change
    create_table :study_groups do |t|

    	t.integer "gid", :null => false
    	t.string "gname"
    	t.string "description"
    	t.string "location"
    	
      t.timestamps null: false
    end
  end
end

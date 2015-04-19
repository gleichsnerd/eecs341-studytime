class CreateMeetingTimes < ActiveRecord::Migration
  def change
    create_table :meeting_times do |t|

    	t.integer "gid", :null => false
    	t.integer "mid", :null => false
    	t.time "mtime"
    	
      t.timestamps null: false
    end
  end
end

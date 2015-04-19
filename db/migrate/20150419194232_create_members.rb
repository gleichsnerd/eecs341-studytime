class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|

    	t.integer "sid", :null => false
    	t.integer "gid"
    	t.date "join_date"
    	
      t.timestamps null: false
    end
  end
end

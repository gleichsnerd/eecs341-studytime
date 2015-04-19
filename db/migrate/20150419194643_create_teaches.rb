class CreateTeaches < ActiveRecord::Migration
  def change
    create_table :teaches do |t|

    	t.integer "cid", :null => false
    	t.integer "pid", :null => false
    	t.string "semester"
    	t.integer "year"
    	
      t.timestamps null: false
    end
  end
end

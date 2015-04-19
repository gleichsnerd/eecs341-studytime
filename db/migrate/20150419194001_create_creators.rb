class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|

    	t.integer "sid", :null => false
    	t.integer "gid"
    	t.integer "cid"
    	t.date "create_date"
    	
      t.timestamps null: false
    end
  end
end

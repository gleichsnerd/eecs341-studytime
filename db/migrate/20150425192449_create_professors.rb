class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|

    	#t.integer "pid", :null => false
    	t.string "pname"
    	t.string "email"
    	
      t.timestamps null: false
    end
  end
end

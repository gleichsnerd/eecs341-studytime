class CreateTeaches < ActiveRecord::Migration
  def change
    create_table :teaches, :id => false do |t|
    	t.references :professor
    	t.references :course
    	t.string "semester"
    	t.integer "year"

      t.timestamps null: false
    end
    add_index :teaches, ["professor_id", "course_id"]
  end
end

class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members, :id => false do |t|
    	t.references :student
    	t.references :study_group
    	t.date "join_date"
      t.timestamps null: false
    end
    add_index :members, ["student_id", "study_group_id"]
  end
end

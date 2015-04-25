class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators, :id => false do |t|
    	t.references :study_group
    	t.references :course
    	t.date "create_date"
      t.timestamps null: false
    end
    add_index :creators, ["study_group_id", "course_id"]
  end
end

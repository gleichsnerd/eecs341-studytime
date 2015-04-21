class CreateCreateStudygroups < ActiveRecord::Migration
  def change
    create_table :create_studygroups, :id => false do |t|
    	t.references :student
    	t.references :study_group
    	t.date "create_date"
      t.timestamps null: false
    end
    add_index :create_studygroups, ["student_id", "study_group_id"]
  end
end

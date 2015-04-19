class CreateMembersStudyGroupsJoin < ActiveRecord::Migration
  def change
    create_table :members_study_groups, :id => false do |t|
    	t.integer "member_id"
    	t.integer "study_group_id"
    end
    add_index :members_study_groups, ["member_id", "study_group_id"]
  end
end

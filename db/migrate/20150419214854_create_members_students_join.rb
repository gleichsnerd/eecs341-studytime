class CreateMembersStudentsJoin < ActiveRecord::Migration
  def change
    create_table :members_students, :id => false do |t|
    	t.integer "member_id"
    	t.integer "student_id"
    end
    add_index :members_students, ["member_id", "student_id"]
  end
end

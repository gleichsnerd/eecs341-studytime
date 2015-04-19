class CreateProfessorsTeachesJoin < ActiveRecord::Migration
  def change
    create_table :professors_teaches, :id => false do |t|
    	t.integer "professor_id"
    	t.integer "teach_id"
    end
    add_index :professors_teaches, ["professor_id", "teach_id"]
  end
end

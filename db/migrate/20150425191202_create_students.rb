class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      #t.integer :sid, :null => false
      t.string :sname
      t.string :email
      t.string :pwd
      t.string :token

      t.timestamps null: false
    end
  end
end

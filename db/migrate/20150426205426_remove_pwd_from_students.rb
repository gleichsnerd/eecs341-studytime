class RemovePwdFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :pwd, :string
  end
end

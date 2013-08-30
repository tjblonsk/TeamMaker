class CreateSpellsStudentsJointTable < ActiveRecord::Migration
  def up
    create_table :spells_students, :id => false do |t|
    t.references :spells
    t.references :students
  end

  end

  def down
  end
end

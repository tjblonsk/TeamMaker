class CreateSpellsTable < ActiveRecord::Migration
  def up
     create_table :spells do |t|
      t.string :name
    end
  end

  def down
  end
end

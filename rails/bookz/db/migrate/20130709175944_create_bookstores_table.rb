class CreateBookstoresTable < ActiveRecord::Migration
  def up
      create_table :bookstores do |t|
      t.string :name
      t.string :address
      t.references :book

      t.timestamps
    end
  end

  def down
    drop_table :bookstores
  end
end

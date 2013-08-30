class CreateBooksTable < ActiveRecord::Migration
  def up
     create_table :books do |t|
      t.string :name
      t.references :author
      t.references :bookstore

      t.timestamps
    end
  end

  def down
    drop_table :books
  end
end

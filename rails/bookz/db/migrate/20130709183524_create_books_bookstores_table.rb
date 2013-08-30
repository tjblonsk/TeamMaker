class CreateBooksBookstoresTable < ActiveRecord::Migration
  def up
     create_table :books_bookstores, :id => false do |t|
      t.integer :book_id
      t.integer :bookstore_id

      t.timestamps
    end
  end

  def down
    drop_table :books_bookstores
  end
end

class AuthorsBooks < ActiveRecord::Migration[5.2]
  def change
  	create_table :book_authors do |t|
      t.belongs_to :author, index: true
      t.belongs_to :book, index: true
    end
  end
end

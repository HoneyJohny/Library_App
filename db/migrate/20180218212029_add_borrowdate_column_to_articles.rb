class AddBorrowdateColumnToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :borrow_date, :date
  end
end

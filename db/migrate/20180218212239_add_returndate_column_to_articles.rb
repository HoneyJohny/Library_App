class AddReturndateColumnToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :return_date, :date
  end
end

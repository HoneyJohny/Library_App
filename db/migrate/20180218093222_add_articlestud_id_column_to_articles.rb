class AddArticlestudIdColumnToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :articlestud_id, :integer
  end
end

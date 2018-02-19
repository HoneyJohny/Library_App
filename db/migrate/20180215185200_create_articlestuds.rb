class CreateArticlestuds < ActiveRecord::Migration[5.1]
  def change
    create_table :articlestuds do |t|
    t.string :title
      t.text :text
      t.text :discp

      t.timestamps
    end
  end
end

class AddAutorToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :autor, :string
  end
end

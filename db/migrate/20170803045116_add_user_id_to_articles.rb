class AddUserIdToArticles < ActiveRecord::Migration[5.0]
  def change
    unless column_exists? :articles, :user_id  
      add_column :articles, :user_id, :integer
    end
  end
end

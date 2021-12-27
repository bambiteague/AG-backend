class ChangeColumnNameInPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :url, :image_url
  end
end

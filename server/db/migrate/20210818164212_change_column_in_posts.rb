class ChangeColumnInPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :image_url, :imageUrl
  end
end

class ChangeImageTableToPostTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :images, :posts
  end
end

class RenameCommentsTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :table_comments, :comments
  end
end

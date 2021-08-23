class CreateTableComments < ActiveRecord::Migration[6.1]
  def change
    create_table :table_comments do |t|
      t.integer :post_id
      t.string :content
      t.string :comment_author

      t.timestamps
    end
  end
end

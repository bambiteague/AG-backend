class AddColumnsToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :url, :text
    add_column :images, :description, :text
  end
end

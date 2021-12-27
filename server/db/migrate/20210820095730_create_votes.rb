class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.boolean :upVote
      t.boolean :downVote

      t.timestamps
    end
  end
end

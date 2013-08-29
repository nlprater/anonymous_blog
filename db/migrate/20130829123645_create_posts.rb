class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|

  	t.string :title, null: false
  	t.string :body, null: false
  	t.string :author
  	t.timestamps
    end 

    add_index :posts, :id, unique: true
    add_index :posts, :author
  end
end

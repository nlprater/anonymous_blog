class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  	  t.string :title, null: false
  	  t.string :body, null: false
      t.belongs_to :user
  	  t.timestamps
    end 

    add_index :posts, :id, unique: true
    add_index :posts, :user_id
  end
end

class CreatePosttags < ActiveRecord::Migration
  def change
    create_table :posttags do |t|
      t.belongs_to :post
      t.belongs_to :tag
      t.timestamps
    end
    
    add_index :posttags, :post_id
    add_index :posttags, :tag_id
  end
end

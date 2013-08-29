class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|

      t.string :description, null: false
      t.timestamps
    end
    add_index :tags, :id, unique: true
  end
end

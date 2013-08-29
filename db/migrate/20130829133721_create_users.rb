class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  	  t.first_name, null: false
  	  t.last_name, null: false
  	  t.username, null: false
  	  t.timestamps
  	end
  	add_index :users, :id, unique: true
  end
end

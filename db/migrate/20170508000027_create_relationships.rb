class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer 'followed_id', :null => false
      t.integer 'follower_id', :null => false
      
      t.timestamps
    end
    add_index :relationships, :followed_id
  end
end

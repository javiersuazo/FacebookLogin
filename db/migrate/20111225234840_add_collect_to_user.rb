class AddCollectToUser < ActiveRecord::Migration
 def self.up  
     add_column :collects, :user_id, :integer
  end

  def self.down
     remove_column :collects, :user_id
  end
end

class AddPictureToCollect < ActiveRecord::Migration
   def self.up  
     add_column :pictures, :collect_id, :integer
  end

  def self.down
     remove_column :pictures, :collect_id
  end
end

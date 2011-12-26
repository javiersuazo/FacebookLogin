class CreateCollects < ActiveRecord::Migration
  def change
    create_table :collects do |t|
      t.string :titulo

      t.timestamps
    end
  end
end

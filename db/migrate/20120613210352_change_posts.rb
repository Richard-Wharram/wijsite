class ChangePosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
	  rename_column :posts, :name, :author
    end
  end
end
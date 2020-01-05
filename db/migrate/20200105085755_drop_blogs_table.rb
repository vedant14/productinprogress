class DropBlogsTable < ActiveRecord::Migration[6.0]
  def change
  	  	drop_table :blogs

  end
end

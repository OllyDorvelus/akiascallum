class AddPictureToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :picture, :string
  end
end

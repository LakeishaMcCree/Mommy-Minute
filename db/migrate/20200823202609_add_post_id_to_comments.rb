class AddPostIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :blog_id, :integer
  end
end

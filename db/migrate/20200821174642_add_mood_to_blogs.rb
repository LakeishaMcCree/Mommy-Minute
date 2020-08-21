class AddMoodToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :mood, :string
  end
end

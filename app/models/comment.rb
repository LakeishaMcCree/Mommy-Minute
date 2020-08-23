class Comment < ApplicationRecord
    belongs_to :published_blog
    has_many :users, through: :published_blog

    def create
        @blog = Blog.find(params[:blog_id])
        @comment = @blog.comments.create! (params[:comment])
        redirect_to @blog
    end
end

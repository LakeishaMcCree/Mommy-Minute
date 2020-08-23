class BlogsController < ApplicationController

    before_action :set_blog, except: [:index, :new, :create]

    def index 
        if params[:term] 
            @blogs = Blog.search(params[:term])
        else
            @blogs = Blog.sorted_published_blogs 
        end
    end

    def show #/blogs/:id
        #@blog = Blog.find_by_id(params[:id])
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = current_user.blogs.build(blog_params)
        if @blog.save
            redirect_to user_blogs_path(current_user)
        else
            render :new
        end
    end

    def edit #/blogs/:id/edit
        @blog = Blog.find_by_id(params[:id])
    end

    def update #patch /blogs/:id
        if @blog.update(blog_params)
            redirect_to user_blog_path(current_user, @blog) #_path - route helper /blogs/id
        else
            render :edit
        end
    end

    def destroy #delete /blogs/:id
        @blog.destroy
        redirect_to user_blogs_path(current_user)
    end

    private

        def set_blog
            @blog = Blog.find_by_id(params[:id])
        end

        def blog_params
            params.require(:blog).permit(:title, :content, :published_date, :author, :mood)
        end
end

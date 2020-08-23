class BlogsController < ApplicationController

    before_action :set_blog, except: [:index, :new, :create]

    def index 
        if params[:term] 
            @blogs = Blog.search(params[:term])
        else
            @blogs = Blog.sorted_published_blogs 
        end
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.new(blog_params)
        if @blog.save
            redirect_to blogs_path
        else
            render :index
        end
    end

    def show #/blogs/:id
        
    end

    def edit #/blogs/:id/edit

    end

    def update #patch /blogs/:id
        if @blog.update(blog_params)
            redirect_to blog_path(@blog) #_path - route helper /blogs/id
        else
            render :edit
        end
    end

    def destroy #delete /blogs/:id
        @blog.destroy
        redirect_to blogs_path
    end

    private

        def set_blog
            @blog = Blog.find_by_id(params[:id])
        end

        def blog_params
            params.require(:blog).permit(:title, :content, :published_date, :author, :mood)
        end
end

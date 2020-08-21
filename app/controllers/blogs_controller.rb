class BlogsController < ApplicationController

    before_action :set_blog, except: [:index, :new, :create]

    def index 
        @blogs = Blog.all 
    end

    def new
        @blog = Blog.new
    end

    def create

    end

    def show #/blogs/:id
        
    end

    def edit #/blogs/:id/edit

    end

    def update #patch /blogs/:id

    end

    def destroy #delete /blogs/:id

    end

    private

        def set_blog
            @blog = Blog.find_by_id(params[:id])
        end
end

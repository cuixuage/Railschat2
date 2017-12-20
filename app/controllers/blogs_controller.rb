class BlogsController < ApplicationController
  include SessionsHelper
   
  def index
    @blogs = Blog.all
  end

  def new
    @blogs = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id]) 
    redirect_to @blog
  end
  
  def create
    @blog = Blog.new(blog_params)
   
    @blog.save
    redirect_to @blog
  end
  
  private
    def blog_params
       params.require(:blog).permit(:article, :text)
    end  
end

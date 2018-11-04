class BlogController < ApplicationController
  before_action :set_blog, only: [:update, :destroy]
  def index
    render json: Blog.all
  end

  def show
    # render JSON for each indiviual blog by id
    render json: @blog
  end

  def update
    # if blog update blog params, render json for blog
  end
  
  def destroy
    # Destroy blog by ID
    @blog.destroy()
  end
  
  private
    def set_blog
      @blog = blog(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:name, :complete)
    end
end

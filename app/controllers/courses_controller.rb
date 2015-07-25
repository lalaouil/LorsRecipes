class CoursesController < ApplicationController
  before_action :require_user, except: [:show]
  
  def show
    @course = Course.find(params[:id])
    @recipes = @course.recipes.paginate(page: params[:page], per_page: 4)
  end
   
  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(course_params)
    if @course.save
     redirect_to recipes_path 
    else
     render "new" 
    end
  end
  
  private
  
  def course_params
  params.require(:course).permit(:name)
  end
end
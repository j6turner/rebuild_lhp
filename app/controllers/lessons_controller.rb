class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
    render :index
  end

  def show
    @lesson = List.find(params[:id])
    render :show
  end
  
end

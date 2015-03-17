class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
    render :index
  end

  def show
    @lesson = Lesson.find(params[:id])
    render :show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      redirect_to lessons_path
    else
      render :new
    end
  end
end

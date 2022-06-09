class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
    @unit = Unit.new
  end

  def create
    @course = Course.create(course_params)

    is_empty_unit_params = unit_params[:title].empty? && unit_params[:body].empty?

    @unit = Unit.create(unit_params) unless is_empty_unit_params

    if (@unit.nil? || (@unit.save && @course.units << @unit)) && @course.save
      redirect_to action: 'index'
    else
      @unit = Unit.new if @unit.nil?
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @course = Course.find(params[:id])
    @unit = Unit.new
    redirect_to action: 'index' if @course.nil?
  end

  def update
    @course = Course.find(params[:id])

    is_empty_unit_params = unit_params[:title].empty? && unit_params[:body].empty?

    @unit = Unit.create(unit_params) unless is_empty_unit_params

    if (@unit.nil? || (@unit.save && @course.units << @unit)) && @course.update(course_params)
      redirect_to action: 'index'
    else
      @unit = Unit.new if @unit.nil?
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def course_params
    permited = params.require(:course).permit(:title, :volume, :price, units: [])
    permited[:units] = permited[:units].reject { |u| u.empty? }
    permited[:units] = Unit.find(permited[:units])
    permited
  end

  def unit_params
    params.require(:unit).permit(:title, :body)
  end
end

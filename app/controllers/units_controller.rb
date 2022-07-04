class UnitsController < ApplicationController
  before_action :set_breadcrumb, only: [:edit]
  
  def create
    @course = Course.find(params[:article_id])
    @unit = @course.units.create(unit_params)
    redirect_to article_path(@course)
  end

  def edit
    @unit = Unit.find(params[:id])
    
    redirect_to :back if @unit.nil?

    @redirect_to = request.referrer
  end

  def update
    @unit = Unit.find(params[:id])
    render :edit, status: :unprocessable_entity unless @unit.update(unit_params)

    redirect_to_url = params.require(:unit)[:redirect_to]
    return redirect_to redirect_to_url if redirect_to_url.present?
  
    redirect_to '/'
  end

  private

  def unit_params
    params.require(:unit).permit(:title, :body)
  end

  def set_breadcrumb
    @breadcrumb = request.fullpath
  end
end

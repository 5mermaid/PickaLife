class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def create
    @experience = Experience.create(experience_params)
    redirect_to '/experiences'
  end

  def new
    @experience = Experience.new
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    Experience.find(params[:id]).update(experience_params)
    redirect_to "/experiences/#{params[:id]}"
  end

  def destroy
    Experience.find(params[:id]).destroy
    redirect_to '/experiences'
  end

  private

  def experience_params
    params.require(:experience).permit(:activity,:place, :start_date, :end_date,:price)
  end
end
class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
  end

  def show
    @festival = Festival.find(params[:id])
    @review = Review.new
  end

  def find_festival
    @festival = Festival.find(params[:search][:id])
    redirect_to festival_path(@festival)
  end

  def display_friday
    @festival = Festival.find(params[:festival])
    render :display_friday
  end

  def display_saturday
    @festival = Festival.find(params[:festival])
    render :display_saturday
  end

  def display_sunday
    @festival = Festival.find(params[:festival])
    render :display_sunday
  end
end

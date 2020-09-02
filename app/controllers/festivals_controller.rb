class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
  end

  def show
    @festival = Festival.find(params[:id])
    @review = Review.new
    @top_reviews = @festival.reviews.where("rating > ?", 3).limit(2)
  end

  def find_festival
    @festival = Festival.find(params[:search][:id])
    redirect_to festival_path(@festival)
  end

  def display_friday
    @festival = Festival.find(params[:festival])
    @start_times = UserSchedule.where(user: current_user).collect(&:schedule).flatten.select { |x| x.day == 'Friday' }.collect(&:start_time)
    @festival_names = UserSchedule.where(user: current_user).collect(&:schedule).flatten.select { |x| x.day == 'Friday' }.collect(&:stage).collect(&:festival).collect(&:name)
    render :display_friday
  end

  def display_saturday
    @festival = Festival.find(params[:festival])
    @start_times = UserSchedule.where(user: current_user).collect(&:schedule).flatten.select { |x| x.day == 'Saturday' }.collect(&:start_time)
    @festival_names = UserSchedule.where(user: current_user).collect(&:schedule).flatten.select { |x| x.day == 'Saturday' }.collect(&:stage).collect(&:festival).collect(&:name)
    render :display_saturday
  end

  def display_sunday
    @festival = Festival.find(params[:festival])
    @start_times = UserSchedule.where(user: current_user).collect(&:schedule).flatten.select { |x| x.day == 'Sunday' }.collect(&:start_time)
    @festival_names = UserSchedule.where(user: current_user).collect(&:schedule).flatten.select { |x| x.day == 'Sunday' }.collect(&:stage).collect(&:festival).collect(&:name)
    render :display_sunday
  end
end

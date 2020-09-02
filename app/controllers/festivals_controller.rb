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
    @festival_schedules_day = @festival.schedules.where(day: 'Friday')
    @user_schedules = UserSchedule.where(user: current_user).collect(&:schedule).filter { |x| x.day == 'Friday' }
    @start_times_day = (@festival_schedules_day & @user_schedules).collect(&:start_time)
    render :display_friday
  end

  def display_saturday
    @festival = Festival.find(params[:festival])
    @festival_schedules_day = @festival.schedules.where(day: 'Saturday')
    @user_schedules = UserSchedule.where(user: current_user).collect(&:schedule).filter { |x| x.day == 'Saturday' }
    @start_times_day = (@festival_schedules_day & @user_schedules).collect(&:start_time)
    render :display_saturday
  end

  def display_sunday
    @festival = Festival.find(params[:festival])
    @festival_schedules_day = @festival.schedules.where(day: 'Sunday')
    @user_schedules = UserSchedule.where(user: current_user).collect(&:schedule).filter { |x| x.day == 'Sunday' }
    @start_times_day = (@festival_schedules_day & @user_schedules).collect(&:start_time)
    render :display_sunday
  end
end

class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
  end

  def show
    @festival = Festival.find(params[:id])
    @review = Review.new
    @top_reviews = Review.where("rating > ?", 3).limit(2)
  end

  def find_festival
    @festival = Festival.find(params[:search][:id])
    redirect_to festival_path(@festival)
  end

  def display_friday
    @festival = Festival.find(params[:festival])
    @festivalschedules = @festival.schedules.where(day: 'Friday')
    @userschedules = UserSchedule.where(user: current_user).collect(&:schedule).filter { |x| x.day == 'Friday' }
    @start_times = (@festivalschedules & @userschedules).collect(&:start_time)
    render :display_friday
  end

  def display_saturday
    @festival = Festival.find(params[:festival])
    @festivalschedules = @festival.schedules.where(day: 'Saturday')
    @userschedules = UserSchedule.where(user: current_user).collect(&:schedule).filter { |x| x.day == 'Saturday' }
    @start_times = (@festivalschedules & @userschedules).collect(&:start_time)
    render :display_saturday
  end

  def display_sunday
    @festival = Festival.find(params[:festival])
    @festivalschedules = @festival.schedules.where(day: 'Sunday')
    @userschedules = UserSchedule.where(user: current_user).collect(&:schedule).filter { |x| x.day == 'Sunday' }
    @start_times = (@festivalschedules & @userschedules).collect(&:start_time)
    render :display_sunday
  end
end

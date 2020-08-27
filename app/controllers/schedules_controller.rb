class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.where(festival_id: 1, day: 'Friday')
  end

  def create
    @schedule = Schedule.new(strong_params)
    @schedule.user = current_user
    @festival = Festival.find(params[:festival_id])
    @festival.schedule = @schedule
    if @schedule.save!
      redirect_to festival_schedule_path(@festival, @schedule)
    end
  end

  def update
    find_by_id
    if @schedule.update(strong_params)
      redirect_to festival_schedule_path(@festival, @schedule)
    end
  end

  def destroy
    find_by_id
    @schedule.destroy
    redirect_to festival_path(@festival)
  end

  def show
    @festival = Festival.find(params[:festival_id]) # need to change this - only showing Glasto atm
  end

  private

  def strong_params
    params.require(:schedule).permit(:festival_id, :day, :start_time, :end_time, :artist, :genre, :stage)
  end

  def find_by_id
    @festival = Festival.find(params[:festival_id])
    @schedule = Schedule.find(params[:id])
  end
end

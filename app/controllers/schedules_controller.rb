class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.where(festival_id: 1, day: 'Friday')
  end

  # def create
  #   @schedule = Schedule.new(strong_params)
  #   @schedule.user = current_user
  #   @festival = Festival.find(params[:festival_id])
  #   @festival.schedule = @schedule
  #   if @schedule.save!
  #     redirect_to root_path # change this path
  #   end
  # end

  # def update
  #   find_by_id
  #   if @schedule.update(strong_params)
  #     redirect_to root_path # change this path
  #   end
  # end

  # def destroy
  #   find_by_id
  #   @schedule.destroy
  #   redirect_to root_path # change this path
  # end

  # private

  # def strong_params
  #   params.require(:schedule).permit(:festival_id, :day, :start_time, :end_time, :artist, :genre, :stage)
  # end

  # def find_by_id
  #   @schedule = Schedule.find(params[:id])
  # end
end

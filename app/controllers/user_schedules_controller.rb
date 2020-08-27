class UserSchedulesController < ApplicationController
  def create
    if Schedule.find(params[:schedule_id]).user_schedules.where(user: current_user) != []
      # redirect_to festival_path(Schedule.find(params[:schedule_id]).stage.festival)
      # flash[:notice] = "Already selecte!!!!!!!!!!!!"
    else
      @user_schedule = UserSchedule.new(user: current_user, schedule: Schedule.find(params[:schedule_id]))
      @user_schedule.save
    end
    # raise
  end
end

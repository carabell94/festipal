class UserSchedulesController < ApplicationController
  def create
    if Schedule.find(params[:schedule_id]).user_schedules.where(user: current_user) != []
    else
      @user_schedule = UserSchedule.new(user: current_user, schedule: Schedule.find(params[:schedule_id]))
      @user_schedule.save
    end
    redirect_to festival_path(Schedule.find(params[:schedule_id]).stage.festival)
    # if # u are in festiplan redirect to same page

    # elsif #if u are in lineup stay there

    # end
  end

  def destroy
    @user_schedule = UserSchedule.find(params[:schedule_id])
    @user_schedule.destroy
    # raise
    redirect_to festival_schedule_path(@user_schedule.schedule.stage.festival)
  end
end

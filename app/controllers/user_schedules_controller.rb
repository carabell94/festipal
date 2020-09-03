class UserSchedulesController < ApplicationController
  def create
    @user_schedule = UserSchedule.create(user: current_user, schedule: Schedule.find(params[:schedule_id]))
    if params[:suggestion]
      respond_to do |format|
        format.js { render inline: "location.reload();" }
      end
    else
      redirect_to festival_path(@user_schedule.schedule.stage.festival)
    end
  end

  def destroy
    @user_schedule = UserSchedule.find(params[:schedule_id])
    @user_schedule.destroy

    redirect_to festival_schedule_path(@user_schedule.schedule.stage.festival)
  end
end

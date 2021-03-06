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
    @festival = Festival.find(params[:festival_id])
    @suggestions = suggestions(@festival)

    @user = current_user
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "FestiPal Schedule",
               template: 'schedules/pdf/show.html.erb',
               layout: "pdf.html",
               encoding: "UTF-8"
      end
    end
  end

    # @festival_schedules_day = @festival.schedules.where(day: 'Friday')
    # @user_schedules = UserSchedule.where(user: current_user).collect(&:schedule).filter { |x| x.day == 'Friday' }
    # @start_times_day = (@festival_schedules_day & @user_schedules).collect(&:start_time)

  private

  def strong_params
    params.require(:schedule).permit(:festival_id, :day, :start_time, :end_time, :artist, :genre, :stage)
  end

  def find_by_id
    @festival = Festival.find(params[:festival_id])
    @schedule = Schedule.find(params[:id])
  end

  def suggestions(festival)
    @festival_schedules_friday = festival.schedules.where(day: 'Friday')
    @festival_schedules_saturday = festival.schedules.where(day: 'Saturday')
    @festival_schedules_sunday = festival.schedules.where(day: 'Sunday')

    @user_schedules_friday = UserSchedule.where(user: current_user).collect(&:schedule).filter { |x| x.day == 'Friday' }
    @user_schedules_saturday = UserSchedule.where(user: current_user).collect(&:schedule).filter { |x| x.day == 'Saturday' }
    @user_schedules_sunday = UserSchedule.where(user: current_user).collect(&:schedule).filter { |x| x.day == 'Sunday' }

    @start_times_friday = (@festival_schedules_friday & @user_schedules_friday).collect(&:start_time)
    @start_times_saturday = (@festival_schedules_saturday & @user_schedules_saturday).collect(&:start_time)
    @start_times_sunday = (@festival_schedules_sunday & @user_schedules_sunday).collect(&:start_time)

    @free_schedules_friday = @festival_schedules_friday.reject { |schedule| @start_times_friday.include? schedule.start_time}
    @free_schedules_saturday = @festival_schedules_saturday.reject { |schedule| @start_times_saturday.include? schedule.start_time}
    @free_schedules_sunday = @festival_schedules_sunday.reject { |schedule| @start_times_sunday.include? schedule.start_time}

    @suggestions = (@free_schedules_friday + @free_schedules_saturday + @free_schedules_sunday).sample(5)
  end
end

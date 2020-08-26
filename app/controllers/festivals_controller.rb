class FestivalsController < ApplicationController
def index
  @festivals = Festival.all
  # @search = params['search']
  # if @search.present?
  #   @name = @search['name']
  #   # @festivals = Festival.where(name: @name)
  #   @festivals = Festival.where("name ILIKE ?", @name)
  # end
end

def show
  @festival = Festival.find(params[:search][:id])
  @schedules = Schedule.all
end

end

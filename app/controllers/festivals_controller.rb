class FestivalsController < ApplicationController
def index
  @festivals = Festival.all
end

def show
  @festival = Festival.find(params[:id])
end

def find_festival
  @festival = Festival.find(params[:search][:id])
  redirect_to festival_path(@festival)
end

def display_friday
  render :display_friday
end

def display_saturday
  render :display_saturday
end

def display_sunday
  render :display_sunday
end


end

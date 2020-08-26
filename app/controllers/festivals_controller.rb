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


end

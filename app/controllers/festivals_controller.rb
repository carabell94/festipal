class FestivalsController < ApplicationController

def index
  @festivals = Festival.all
end

def show
  @festival = Festival.where(name: params[:search][:name])
end

def highlights
  @festival = Festival.where(name: params[:search][:name])
end

end

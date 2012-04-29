class VehiclesController < ApplicationController

  def index
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(params[:vehicle])
    @vehicle.save
    flash[:notice] = 'Your vehicle has been saved.'
    redirect_to vehicles_path
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

end

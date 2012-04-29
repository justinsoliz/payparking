class VehiclesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @vehicles = Vehicle.where(:user_id => current_user.id)
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = current_user.vehicles.build(params[:vehicle])
    @vehicle.save
    flash[:notice] = 'Your vehicle has been saved.'
    redirect_to vehicles_path
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update_attributes(params[:vehicle])
    flash[:notice] = "Your vehicle has been updated."
    redirect_to vehicles_path
  end

end

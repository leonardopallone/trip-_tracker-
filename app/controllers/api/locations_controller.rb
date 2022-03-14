class Api::LocationsController < ApplicationController

 
  # before_action :set_user
  # before_action :set_trip
  before_action :set_location, only: [:show, :update, :destroy]

  def index
    render json: Location.all
  end

  def show
    render json: @location
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      render json: @location
    else
      render json: { errors: @location.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @location.update(location_params)
      render json: @location
    else
      render json: { errors: @location.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @trip.destroy
    render json: { message: 'Location Deleted'}
  end

  private 
    def set_location
      @location = Location.find(params[:id])
      
    end

  
    def location_params
      params.require(:location).permit(:name)
    end
end




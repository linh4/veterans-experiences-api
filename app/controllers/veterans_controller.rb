class VeteransController < ApplicationController

  def index
    @veterans = Veteran.all
    render json: @veterans
  end

  def show
    @veteran = Veteran.find(params[:id])
    render json: @veteran
  end

  def create
    byebug
    @veteran = Veteran.new(veteran_params)
   if @veteran.save
     render json: @veteran, status: :created
   else
     render json: {error: 'Failed to create veteran'}, status: :not_acceptable
   end
  end

  private

  def veteran_params
    params.permit(:username, :password, :location)
  end

end

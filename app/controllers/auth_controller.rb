class AuthController < ApplicationController

  skip_before_action :authorized, only: [:create]

  def create
    @veteran = Veteran.find_by(username: veteran_login_params[:username])
    # byebug
    #Veteran#authenticate comes from BCrypt
    if @veteran && @veteran.authenticate(veteran_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ veteran_id: @veteran.id })
      render json: { veteran: VeteranSerializer.new(@veteran), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid veteranname or password' }, status: :unauthorized
    end
  end

  def show
    # byebug
    token = request.headers["Authorization"]
    veteran = Veteran.find_by(id: decoded_token[0]["veteran_id"])
    if veteran
      render json: {username: veteran.username, id: veteran.id, jwt:token}
    else
      render json: {error: 'Invalid Token'}, status: 401
    end
  end

  private

  def veteran_login_params
    params.require(:auth).permit(:username, :password)
  end


end

class ApplicationController < ActionController::API

  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, 'secret')
  end

  def auth_header
      request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header
      begin
        JWT.decode(token, 'secret', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_veteran
    if decoded_token
      veteran_id = decoded_token[0]['veteran_id']
      return @veteran = User.find_by(id: veteran_id)
    end
  end

  def logged_in?
    !!current_veteran
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

end

class ApiController < ApplicationController
  protect_from_forgery with: :null_session

  rescue_from ActionController::ActionControllerError do
    render json: { message: 'page not found' }, status: 404
  end

  rescue_from ActionController::RoutingError do
    render json: { message: 'page not found' }, status: 404
  end

  private

  def login_user
    return current_user if user_signed_in?
    return @current_login_user if @current_login_user
    
    @current_login_user = User.find_by(auth_token: params[:auth_token])
    return ActionController::ActionControllerError.new('User Not Found') unless @current_login_user
  end
end

class Api::V1::UsersController < ApiController

  api :POST, "/users/login", "用户登入"
  param :email, String, :desc => "phone或者email选其一", :required => false
  param :password, String, :required => true
  example '参考 POST /users'
  def login
    @user = User.find_by(email: params[:email])
    return render json: { result: 'error', message: 'user password invalid' } if !(@user && @user.valid_password?(params[:password]))
    render template: '/api/user_with_token'
  end

end

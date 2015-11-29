json.user do
  json.partial! '/api/user', user: @user
  json.auth_token @user.auth_token
end

class SessionsController < ApplicationController
  def omniauth
    user = AdminUser.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to '/login'
    end
  end
end

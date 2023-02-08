class SessionsController < ApplicationController
  def omniauth
    user = AdminUser.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id
      redirect_to after_sign_in_path_for(user)
    else
      redirect_to '/admin/sign_in'
    end
  end
end

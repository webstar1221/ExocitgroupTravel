class SessionsController < ApplicationController
  def omniauth
    user = AdminUser.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id
      sign_in_and_redirect user, event: :authentication
    else
      redirect_to '/admin/sign_in'
    end
  end
end

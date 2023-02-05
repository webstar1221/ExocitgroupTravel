class ApplicationController < ActionController::Base
    layout :layout_by_resource
    
    protected

    def layout_by_resource
        if devise_controller? && admin_user_signed_in?
            "layouts/devise"
        else
            "application"
        end
    end

    def authenticate_admin_user!
      if admin_user_signed_in?
        super
      else
        redirect_to new_admin_user_session_path
      end
    end
end

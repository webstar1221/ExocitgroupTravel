module Admin
    class UsersController < AdminController
        before_action :authenticate_admin_user!

        def edit
          @admin = current_admin_user
        end
  
        def show
          @admin = current_admin_user
        end
          
        def update
          @admin = current_admin_user
          if admin_params[:new_password] != admin_params[:confirm_password]
            flash[:warning] = "Confirm Password does not match your new password"
            redirect_to admin_user_path
          else
            if @admin.update(email: admin_params[:email], password: admin_params[:new_password])
              flash[:success] = "Profile updated successfully"
              sign_in(@admin, bypass: true)
              redirect_to admin_user_path
            else
              flash[:warning] = "There was an error updating your password"
              render :edit
            end
          end
        end 
        
        private 

        def admin_params
          params.permit(:email, :new_password, :confirm_password)
        end
    end
end
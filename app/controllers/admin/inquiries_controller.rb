module Admin
    class InquiriesController < AdminController
        before_action :authenticate_admin_user!

        def index
            @inquiries = Inquiry.all
        end

        def show
            @inquiry = Inquiry.find(params[:id])
        end

        def destroy
            @inquiry = Inquiry.find(params[:id])
            if @inquiry.destroy
                
            end
        end
    end
end
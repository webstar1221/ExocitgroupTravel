class InquiriesController < ApplicationController
    def create
        @inquirey = Inquiry.new(permitted_params)
        if @inquirey.save
            flash['success'] = "We have recieved your inquiry, w'll get back to you soon, Thanks"
        else
            flash['error'] = "Unexpected error occured"                
        end
        redirect_to @inquirey.tour_id.present? ? tour_details_path(@inquirey.tour_id) : leavemessage_path
    end

    private

    def permitted_params
        params.permit(:first_name, :last_name, :title, :price, :customer_type, :country, :phone, :trip_idea_id, :email, :contact_method, :no_of_passenger, :departure_date, :description, :tour_id)
    end
end

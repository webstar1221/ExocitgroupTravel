module Admin
    class ToursController < AdminController
        before_action :set_tour, only: %i[edit update destroy show] 
        before_action :authenticate_admin_user!

        def index
            @tours = Tour.order(:id)
        end

        def new
            @tour = Tour.new
        end

        def create
            @tour = Tour.new(permitted_params)
            if @tour.save!
                flash['success'] ="#{@tour.destination_name} has saved successfully"
            else
                flash['error'] ="Unexpected error occured"                
            end
            redirect_to admin_tours_path
        end

        def edit
        end

        def update
            if @tour.update(permitted_params)
                flash['success'] ="#{@tour.destination_name} has updated successfully"
                redirect_to admin_tours_path
            else
                flash['error'] = "Unexpected error occured"
                redirect_to @tour
            end
        end

        def destroy
            if @tour.destroy
                flash['success'] ="#{@tour.destination_name} has deleted successfully"
                redirect_to admin_tours_path
            else
                flash['error'] = "Unexpected error occured"
                redirect_to @tour
            end
        end

        private

        def permitted_params
            params.require(:tour).permit(:destination_name, :description, :short_description, :duration, :price, :cover_image, :featured, :trip_idea_id, :country_id, images: [])
        end

        def set_tour
            @tour = Tour.find(params[:id])
        end
    end
end
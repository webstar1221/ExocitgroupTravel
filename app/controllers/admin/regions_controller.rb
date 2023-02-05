module Admin
    class RegionsController < AdminController
        before_action :set_region, only: %i[edit update destroy]
        before_action :authenticate_admin_user!

        def index
            @regions = Region.all
        end

        def new
            @region = Region.new
        end

        def create
            @region =  Region.new(permitted_params)
            if @region.save
                flash['success'] ="#{@region.region_name} saved successfully"
            else
                flash['error'] ="Unexpected error occured"                
            end
            redirect_to admin_regions_path
        end

        def edit;end

        def update
            if @region.update(permitted_params)
                flash['success'] = "#{@region.region_name} updated successfully"
                redirect_to admin_regions_path
            else
                redirect_to @region
            end
        end
        
        def destroy
            if @region.destroy
                flash['success'] = "#{@region.region_name} Deleted successfully"
                redirect_to admin_regions_path
            else
                flash['errror'] = "Unexpected error occured"
                redirect_to admin_regions_path
            end
        end

        private

        def permitted_params
            params.require(:region).permit(:region_name, :active)
        end

        def set_region
            @region = Region.find(params['id'])
        end
    end
end
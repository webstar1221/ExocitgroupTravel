module Admin
    class CountriesController < AdminController
        before_action :set_country, only: %i[edit update destroy]
        before_action :authenticate_admin_user!

        def index
            @countries = Country.all
        end

        def new
            @country = Country.new
        end

        def create
            @country =  Country.new(country_params)
            if @country.save
                flash['success'] ="#{@country.name} saved successfully"
            else
                flash['error'] ="Unexpected error occured"                
            end
            redirect_to admin_countries_path
        end

        def edit;end

        def update
            if @country.update!(country_params)
                flash['success'] = "#{@country.name} updated successfully"
                redirect_to admin_countries_path
            else
                flash['error'] = "#{@country.name} updated successfully"
                redirect_to edit_admin_country_path(@country)
            end
        end
        
        def destroy
            if @country.destroy
                flash['success'] = "#{@country.name} Deleted successfully"
                redirect_to admin_countries_path
            else
                flash['errror'] = "Unexpected error occured"
                redirect_to admin_countries_path
            end
        end

        private

        def country_params
            params.require(:country).permit(:name, :region_id, :active)
        end

        def set_country
            @country = Country.find(params['id'])
        end
    end
end
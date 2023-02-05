module Admin
    class PagesController < AdminController
        before_action :set_page, only: %i[edit update destroy]
        before_action :authenticate_admin_user!

        def index
            @pages = Page.all
        end

        def new
            @page = Page.new
        end

        def create
            @page =  Page.new(permitted_params)
            if @page.save
                flash['success'] = "#{@page.name} saved successfully"
            else
                flash['error'] = "Unexpected error occured"                
            end
            redirect_to admin_pages_path
        end

        def edit; end

        def update
            if @page.update(permitted_params)
                flash['success'] = "#{@page.name} updated successfully"
                redirect_to admin_pages_path
            else
                redirect_to @page
            end
        end
        
        def destroy
            if @page.destroy
                flash['success'] = "#{@page.name} Deleted successfully"
                redirect_to admin_pages_path
            else
                flash['errror'] = "Unexpected error occured"
                redirect_to admin_pages_path
            end
        end

        private

        def permitted_params
            params.require(:page).permit(:name, :content, :active)
        end

        def set_page
            @page = Page.friendly.find(params['id'])
        end
    end
end
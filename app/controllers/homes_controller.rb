class HomesController < ApplicationController
    def index
        @tours = Tour.featured.limit(12)
        @page = Page.new
        render "homes/index"
    end

    def tour
        @tour = Tour.find(params[:id])
        render 'homes/tour'
    end

    def all_tours
        if params['country']
            @country = Country.find_by(name: params['country'])
            if @country.present?
                @tours = @country.tours.paginate(page: params[:page],  per_page: 15)
            else
                @msg = 'No Tours Found'
            end
        else
            @tours = Tour.paginate(page: params[:page],  per_page: 15)
        end
        render 'homes/all_tours'
    end

    def search
        if params[:country].present?
            @country = Country.find_by(name: params[:country])
            @tours = @country.tours.where("destination_name ILIKE ? OR description ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%").paginate(page: params[:page],  per_page: 15)
        else
            @tours = Tour.where("destination_name ILIKE ? OR description ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%").paginate(page: params[:page],  per_page: 15)
        end
        render 'homes/all_tours'
    end

    def filter
        @country = Country.find_by(name: params[:country])
        @tours = @country.tours
        if params[:price].present?
            @price = params[:price]
            price = params[:price].split('-')
            @tours =  @tours.where("price > ? OR price < ?", "#{price[0]}" , "#{price[1]}")
        end
        
        if params[:duration].present?
            @duration = params[:duration]
            duration = params[:duration].split('-')
            @tours =  @tours.where("duration > ? OR duration < ?", "#{duration[0]}" , "#{duration[1]}")
        end

        @tours = @tours.paginate(page: params[:page],  per_page: 15)
        render 'homes/all_tours'
    end

    def pages
        @page = Page.friendly.find(params['id'])
        render 'homes/page'
    end

    def leavemessage
        render 'homes/message'
    end
end

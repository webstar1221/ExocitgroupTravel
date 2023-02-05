module Admin
  class TripIdeasController < AdminController
    before_action :set_trip_idea, only: %i[ show edit update destroy ]

    # GET /trip_ideas or /trip_ideas.json
    def index
      @trip_ideas = TripIdea.all
    end

    # GET /trip_ideas/1 or /trip_ideas/1.json
    def show
    end

    # GET /trip_ideas/new
    def new
      @trip_idea = TripIdea.new
    end

    # GET /trip_ideas/1/edit
    def edit
    end

    # POST /trip_ideas or /trip_ideas.json
    def create
      @trip_idea = TripIdea.new(trip_idea_params)  
      if @trip_idea.save
        flash['success'] ="#{@trip_idea.name} saved successfully"
      else
        flash['error'] ="Unexpected error occured"                
      end
      redirect_to admin_trip_ideas_path
    end

    def update
      if @trip_idea.update(trip_idea_params)
        flash['success'] ="#{@trip_idea.name} updated successfully"
      else
        flash['error'] ="Unexpected error occured"                
      end
      redirect_to admin_trip_ideas_path
    end

    # DELETE /trip_ideas/1 or /trip_ideas/1.json
    def destroy
      if @trip_idea.destroy
        flash['success'] ="#{@trip_idea.name} deleted successfully"
      else
        flash['error'] ="Unexpected error occured"                
      end
      redirect_to admin_trip_ideas_path
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_trip_idea
        @trip_idea = TripIdea.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def trip_idea_params
        params.require(:trip_idea).permit(:name, :active)
      end
  end
end
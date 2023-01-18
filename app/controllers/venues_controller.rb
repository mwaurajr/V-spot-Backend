class VenuesController < ApplicationController
    
    def index
        render json: Venue.all, status: :ok
      end
    def show
        venue = Venue.find_by(id: params[:id])  
        render json: venue, serializer: VenueandReviewSerializer
    end
    def create
        render json: Venue.create!(venue_params), status: :created
    end
    def destroy
        venue = Venue.find(params[:id])
        venue.destroy
        head :no_content
      end
end

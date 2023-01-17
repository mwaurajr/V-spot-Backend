class BookingsController < ApplicationController

    def index
    render json: Booking.all, status: :ok
  end

  def show
   booking =Booking.find(params[:id])
    render json:booking, status: :ok
  end

  def create
       booking =Booking.create(booking_params)
        session[:user_id] =booking.id
        if booking
        render json:booking, status: :created
        else
            render json: {error: "Invalid details"}, status: :unprocessable_entity
        end
    end


  def destroy
   booking =Booking.find(params[:id])
   booking.destroy
    head :no_content
  end

  private

  def booking_params
    params.permit(:start_time, :end_time, :no_guest)
  end
    
end

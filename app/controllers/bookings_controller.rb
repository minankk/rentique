class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @item = Item.find(params[:item_id])
  end

  def create
    @booking = Booking.new(bookings_params)
    @item = Item.find(params[:item_id])
    @booking.item = @item
    @booking.user = current_user

      if @booking.save
        redirect_to bookings_path
      else
        render "new", status: :unprocessable_entity
      end
  end

private
def bookings_params
  params.require(:booking).permit(:start_date, :end_date)

end

end

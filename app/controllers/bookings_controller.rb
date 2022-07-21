class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  # def show
  #   @flat = Flat.find(params[:flat_id])

  #   @booking = Booking.find(params[:id])
  # end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  # def edit
  #    @booking = Booking.find(params[:id])
  # end

  def create
    @booking = Booking.new(booking_params)
    # we need `flat_id` to associate booking with corresponding flat
    @flat = Flat.find(params[:flat_id])
    @booking.flat = @flat
    @booking.user = current_user

    @booking.save
    redirect_to flat_path(@flat)
    # if @booking.save
    #   redirect_to @booking, notice: 'Booking succesful'
    # else
    #   render :new
    # end
  end

  def update

  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to flat_bookings, notice: 'Booking was successfully destroyed.'
  end

  private


    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:check_in, :check_out)
    end
  end

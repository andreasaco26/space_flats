class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  # def show
  #   @flat = Flat.find(params[:flat_id])

  #   @booking = Booking.find(params[:id])
  # end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
    authorize @booking
  end

  # def edit
  #    @booking = Booking.find(params[:id])
  # end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
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
    authorize @booking
    @booking.destroy
    redirect_to flat, notice: 'Booking was successfully destroyed.'
  end

  private


    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:check_in, :check_out)
    end
  end

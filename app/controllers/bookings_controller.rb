class BookingsController < ApplicationController

  def index
  #   #@bookings =
  #   if   current_user.admin?
  #   @bookings = Booking.all
  #  else
  #   @bookings = current_user.bookings
  #  end
    @bookings = policy_scope(Booking).order(created_at: :desc)
    @flats = policy_scope(Flat).order(created_at: :desc)

  end

  def confirmation
    @bookings = Booking.where(user: :current_user)
    authorize @bookings
  end

   def show
    @booking = Booking.find(params[:id])
    @flat = Flat.find(params[:id])
    authorize @booking
    authorize @flat

   end

   def rentals
    @bookings = Booking.joins(:flat).where(flat: { user: current_user })
    authorize @bookings

   end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
    authorize @booking
  end

   def edit
      @booking = Booking.find(params[:id])
      authorize @booking
    end

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
    @booking = Booking.find(params[:id])
    @booking.user = current_user

    authorize @booking
    @booking.update(booking_params)
    if @booking.update(booking_params)
      redirect_to bookings_path, notice: 'Flat booking was successfully updated.'
    else
      render :edit
    end

  end

  def destroy
    #@flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking was successfully destroyed.'
  end

  private


    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:check_in, :check_out)
    end
  end

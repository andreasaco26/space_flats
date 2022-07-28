class FlatsController < ApplicationController
  #skip_before_action :authenticate_user!, only: :home
  #before_action :set_flat
  def index

    if params[:query].present?
      @flats = policy_scope(Flat).order(created_at: :desc)
      @flats = Flat.search_by_address_and_description(params[:query]) #go to movie.rb file to understand reference

    else
      @flats = policy_scope(Flat).order(created_at: :desc)
    end
  end
  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    authorize @flat
    #authorize @booking
  end

  def myflats
    #@flats = policy_scope(Flat).order(created_at: :desc)
    @flats = Flat.where(user: current_user)
    authorize @flats
    #authorize @booking
    #@flats = current_user.flats
  end

    def new
      @flat = Flat.new
      authorize @flat
    end
    def edit
      @flat = Flat.find(params[:id])
      authorize @flat

    end

    def create

      @flat = Flat.new(flat_params)
      @flat.user = current_user
      authorize @flat
      if @flat.save
        redirect_to @flat, notice: 'Article was successfully created.'
      else
        render :new
      end
    end

    def update
      @flat = Flat.find(params[:id])
      @flat.user = current_user
      authorize @flat
      @flat.update(flat_params)
      if @flat.update(flat_params)
        redirect_to @flat, notice: 'Article was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @flat = Flat.find(params[:id])
      authorize @flat
      @flat.destroy
      redirect_to flats_path, notice: 'Flat was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_flat
        @flat = Flat.find(params[:id])
        authorize @flat
      end

      # Only allow a list of trusted parameters through.
      def flat_params
        params.require(:flat).permit(:address, :description, photos: [])
      end
  end

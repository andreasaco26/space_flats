class FlatsController < ApplicationController
  #skip_before_action :authenticate_user!, only: :home
  #before_action :set_flat
  def index
    @flats = Flat.all.order(created_at: :desc)
  end
  def show
    @flat = Flat.find(params[:id])
  end
    def new
      @flat = Flat.new
    end
    def edit
      @flat = Flat.find(params[:id])

    end

    def create
      @flat = Flat.new(flat_params)

      if @flat.save
        redirect_to @flat, notice: 'Article was successfully created.'
      else
        render :new
      end
    end

    def update
      if @flat.update(flat_params)
        redirect_to @flat, notice: 'Article was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @flat = Flat.find(params[:id])
      @flat.destroy
      redirect_to flats_path, notice: 'Flat was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_flat
        @flat = Flat.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def flat_params
        params.require(:flat).permit(:address, :description, photos: [])
      end
  end

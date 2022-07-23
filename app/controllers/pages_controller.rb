class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  layout "home.html.erb", only: :home
  def home
    @flats = Flat.all.order(created_at: :desc)
  end
end

class DounansController < ApplicationController
  def index
    @dounans = Dounan.all.page(params[:page])
  end

  def show
    @dounan = Dounan.find(params[:id])
    @hash = Gmaps4rails.build_markers(@dounan) do |dounan, marker|
      marker.lat dounan.latitude
      marker.lng dounan.longitude
      marker.infowindow dounan.title
    end
  end

  def destroy
  end
end

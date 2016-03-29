class StationsController < ApplicationController
  def index
    @stations = Station.all
    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      marker.lat station.lat
      marker.lng station.long
      marker.infowindow "<a href= 'stations/#{station.id}'>#{station.name}: #{station.line}</a>"
    end    
  end

  def show
    @station = Station.find(params[:id])
  end

end

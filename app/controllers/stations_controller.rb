class StationsController < ApplicationController
  def index
    @stations = Station.all
    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      marker.lat station.lat
      marker.lng station.long
      lines_as_src = ""
      station.line.split("-").each do |ln|
        lines_as_src += "<img class='info_line_icon' src=\/assets\/line_icons\/#{ln.downcase}.svg\/> "
      end
      marker.infowindow "<a class='info_station' href='stations/#{station.id}'>#{station.name} #{lines_as_src}</a>"
      marker.picture({
        "picture" => "/images/train_icon.png",
        "width" => 10,
        "height" => 10
      })
    end    
  end

  def show
    @station = Station.find(params[:id])
    @reviews = @station.reviews
  end

end

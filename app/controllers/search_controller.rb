class SearchController < ApplicationController
  def result
    # set individual searches for profile fields
    @profiles_u = Profile.search_u(params[:query]).order("created_at DESC")

    @profiles_f = Profile.search_f(params[:query]).order("created_at DESC")

    @profiles_l = Profile.search_l(params[:query]).order("created_at DESC")

    # set variable to determine presence
    @profile_presence = @profiles_u.size + @profiles_f.size + @profiles_l.size

    # set individual searches for review fields
    
    @reviews_t = Review.search_t(params[:query]).order("created_at DESC")
  
    @reviews_c = Review.search_c(params[:query]).order("created_at DESC")

    # set variable to determine presence

    @review_presence = @reviews_t.size + @reviews_c.size

    # set individual station searches

    @stations_n = Station.search_n(params[:query]).order("created_at DESC")

    @stations_l = Station.search_l(params[:query]).order("created_at DESC")

    # set variable to determine presence

    @station_presence = @stations_n.size + @stations_l.size
  end
end

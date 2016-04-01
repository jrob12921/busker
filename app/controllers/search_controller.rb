class SearchController < ApplicationController
  def result
    @profiles_u = Profile.search_u(params[:query]).order("created_at DESC")

    @profiles_f = Profile.search_f(params[:query]).order("created_at DESC")

    @profiles_l = Profile.search_l(params[:query]).order("created_at DESC")
    
    @review_t = Review.search_t(params[:query]).order("created_at DESC")
  
    @review_c = Review.search_c(params[:query]).order("created_at DESC")

    @station_n = Station.search_n(params[:query]).order("created_at DESC")

    @station_l = Station.search_l(params[:query]).order("created_at DESC")
  end
end

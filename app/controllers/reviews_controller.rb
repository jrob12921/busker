class ReviewsController < ApplicationController
  def all
    @reviews = Review.all
  end

  def mine
    @reviews = Review.where(user_id: current_user.id)
  end

  def index
    @reviews = Review.where(station_id: params[:station_id])
  end

  def show
    @review = Review.find(params[:id])
    @username = Profile.find_by(user_id: @review.user_id).username
  end

  def new
    @review = Review.new
    @station = Station.find(params[:station_id])
  end

  def create
    @review = Review.new(review_params)
    @review.save

    if @review.save
      flash[:alert] = "Review has been successfully created."
      redirect_to "/stations/#{@review.station_id}/reviews/#{@review.id}"
    else
      flash[:alert] = "There was an error creating the review."
      render :new
    end
  end

  def edit
    @review = Review.find(params[:station_id])
  end

  def update
    @review = Review.find(params[:station_id])
    @review.save

    if @review.save
      flash[:alert] = "Review has been updated created."
      redirect_to review_path(@review.id)
    else
      flash[:alert] = "There was an error updating the review."
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:station_id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :station_id, :title, :content, :rating, :date_seen, :artist_name, :instruments, :add_info, :avatar)
  end
end

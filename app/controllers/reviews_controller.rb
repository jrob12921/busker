class ReviewsController < ApplicationController
  def all
    @reviews = Review.all
  end

  def mine
    @reviews = Review.where(user_id: current_user.id)
    @username = Profile.find_by(user_id: current_user.id).username
  end

  def index
    @reviews = Review.where(station_id: params[:station_id])
  end

  def show
    @review = Review.find(params[:id])
    @username = Profile.find_by(user_id: @review.user_id).username
    @profile = Profile.find_by(user_id: @review.user_id).id
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

  # def edit
  #   @review = Review.find(params[:id])
  # end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)

    respond_to do |format|
      if @review.update_attributes(review_params)
        format.html { redirect_to "/stations/#{@review.station_id}/reviews/#{@review.id}", :alert => 'Review updated' }
        format.json { respond_with_bip(@review) }
      else
        format.html { render :action => "show" }
        format.json { respond_with_bip(@review) }
      end
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

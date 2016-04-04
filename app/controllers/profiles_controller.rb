class ProfilesController < ApplicationController
  def index 
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)

    respond_to do |format|
      if @profile.update_attributes(profile_params)
        format.html { redirect_to(@profile, :alert => 'Profile updated') }
        format.json { respond_with_bip(@profile) }
      else
        format.html { render :action => "show" }
        format.json { respond_with_bip(@profile) }
      end
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:username, :fname, :lname, :borough, :neighborhood, :avatar)
  end

end

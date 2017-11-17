class AppearancesController < ApplicationController

  def new
    @guests = Guest.all
    @episodes = Episode.all
    @appearance = Appearance.new
  end

  def create
    Appearance.create(appearance_params)
    redirect_to episodes_path
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end

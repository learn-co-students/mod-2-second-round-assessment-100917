class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new
    @appearances = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearances_params)

    if @appearance.save
      episode = Episode.find(params[:episode_id])
      redirect_to episode_path(episode)
    else
      render :new
    end

  end

private
def appearances_params
  byebug
  params.require(:appearance).permit(:guest_id,:episode_id,:rating)
end
end

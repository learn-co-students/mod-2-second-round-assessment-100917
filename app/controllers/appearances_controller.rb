class AppearancesController < ApplicationController

def index
  @appearances = Appearance.all
end

def show
  @appearance = Appearance.find(params[:id])
end

def new
  @appearance = Appearance.new
end

def create
  @appearance = Appearance.new(appearance_params)
  if @appearance.save
    redirect_to appearance_path(@appearance.id)
  else
    redirect_to new_appearance_path
  end
end

private

  def appearance_params
     params.require(:appearance).permit(:episode_id, :guest_id, :guest_rating)
   end

end

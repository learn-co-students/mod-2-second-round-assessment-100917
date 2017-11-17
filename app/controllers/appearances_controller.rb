class AppearancesController < ApplicationController

    def index
    @appearances = Appearance.all # this should be able to display all of the appearances ( I know there is some spelling issue here(?))
    end

    def create
      @appearance = Appearance.new(appearance_params)
      if @appearance.save
        redirect_to appearance_path(@appearance)
      else
        render :new
      end
    end

    def new
      @appearance = Appearance.new
    end
end

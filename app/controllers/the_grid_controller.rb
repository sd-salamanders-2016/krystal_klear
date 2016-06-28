class TheGridController < ApplicationController

  # GET /thegrid
  # GET /thegrid.json
  def index
    @users = User.all
    @routes = Route.all
  end

end

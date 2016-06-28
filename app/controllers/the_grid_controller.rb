class TheGridController < ApplicationController
 
  # GET /thegrid
  # GET /thegrid.json
  def index
    @users = User.all
  end

end
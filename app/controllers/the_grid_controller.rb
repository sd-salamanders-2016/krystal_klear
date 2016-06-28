class TheGridController < ApplicationController
 
  # GET /thegrid
  # GET /thegrid.json
  def index
    @users = User.all
    @independent_jobs = Job.where(route_id: nil)
    @open_routes = Route.where(employee_id: nil)
  end

end
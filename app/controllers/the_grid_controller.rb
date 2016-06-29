class TheGridController < ApplicationController

  # GET /thegrid
  # GET /thegrid.json
  def index
    @users = User.all
    @independent_jobs = Job.where(route_id: nil)
    @open_routes = Route.where(employee_id: nil)
    @open_routes = @open_routes.sort { |prev, curr| curr.sum_jobs <=> prev.sum_jobs }
  end

end

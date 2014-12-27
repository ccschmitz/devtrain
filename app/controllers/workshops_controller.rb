class WorkshopsController < ApplicationController
  def index
    @workshops = Workshop.upcoming
  end

  def refresh
    Workshop.refresh
    redirect_to root_path
  end
end

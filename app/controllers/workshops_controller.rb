class WorkshopsController < ApplicationController
  def index

  end

  def refresh
    Workshop.refresh
    redirect_to root_path
  end
end

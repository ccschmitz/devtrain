class PagesController < ApplicationController

  def home
    @workshops = Workshop.order(:name)
  end

end

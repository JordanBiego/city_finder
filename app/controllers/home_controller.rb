class HomeController < ApplicationController
  def index
    @cities = params[:cities]
  end
end

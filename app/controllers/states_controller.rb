class StatesController < ApplicationController
  def index
    @cities = State.search(params)
    render 'home/index'
  end
end

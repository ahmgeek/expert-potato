class HallsController < ApplicationController
  before_action :authenticate_user!

  def index
    @halls = Hall.all
  end
end

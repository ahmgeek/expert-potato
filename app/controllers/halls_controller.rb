class HallsController < ApplicationController
  before_action :authenticate_user!

  def index
    @halls = Hall.all
    @hall = Hall.new
  end

  def new
    @hall = Hall.new
  end

  def create
    @hall = Hall.new(hall_params)
    if @hall.save
      respond_to do |format|
        format.html { redirect_to @hall }
        format.js
      end
    else
      respond_to do |format|
        flash[:notice] = {error: ["a chathall with this name already exists"]}
        format.html { redirect_to new_hall_path }
        format.js { render template: 'halls/hall_errors.js.erb'}
      end
    end
  end

  def edit
    @hall = Hall.find_by(permalink: params[:permalink])
  end

  def update
    @hall = Hall.find_by(permalink: params[:permalink])
    @hall.update(hall_params)
    redirect_to @hall
  end


  def show
    @hall = Hall.find_by(permalink: params[:permalink])
    # Iniating messages creation in the hall.
    @message = Message.new
  end

  private

  def hall_params
    params.require(:hall).permit(:name)
  end
end

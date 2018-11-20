class BoatsController < ApplicationController
  def index
    @boat = Boat.all
  end

  def new
    @boats = Boat.new
  end

  def create
    boat = Boat.new(boats_params)
    boat.save
    if boat.save
      redirect_to boats_path
    else
      redirect_to new_boat_path
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    boat = Boat.find(params[:id])
    if boat.update(boats_params)
      redirect_to boats_path
    else
      render 'boats/#{boats.id}/edit'
    end
  end

  def destroy
    boat = Boat.find(params[:id])
    if boat.destroy
      redirect_to root_path
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  private

  def boats_params
    params.require(:boat).permit(:name, :no_containers, :loc)
  end
end

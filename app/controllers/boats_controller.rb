class BoatsController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def delete
  end

  def show
  end

  private

  def boats_params
    params.require(:boat).permit(:name, :no_containers, :loc)
  end
end

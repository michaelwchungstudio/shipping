class JobsController < ApplicationController
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

  def jobs_params
    params.require(:job).permit(:name, :origin, :destination, :cost, :containers_needed, :descrip)
  end
end

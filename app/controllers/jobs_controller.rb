class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
  end

  def edit
    @job = Job.where(id: params[:id]).first
  end
  def update
    @job = Job.where(id: params[:id]).first
    @job.update(jobs_params)
    @job.save
    redirect_to "/"
  end

  def delete
  end

  def show
    @job = Job.where(id: params[:id]).first
  end

  private

  def jobs_params
    params.require(:job).permit(:name, :origin, :destination, :cost, :containers_needed, :descrip)
  end
end

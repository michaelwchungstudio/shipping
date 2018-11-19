class JobsController < ApplicationController
  def index
  end

  def new
    puts current_user.id
  end

  def create
    job = Job.new(jobs_params)
    job.user_id = current_user.id
    if job.save
      redirect_to "/users/#{current_user.id}"
    else
      render "/jobs/new"
    end
  end

  def edit
  end

  def delete
  end

  def show
  end

  private

  def jobs_params
    params.require(:job).permit(:name, :origin, :destination, :cost, :containers_needed, :descrip, :user_id)
  end
end

class JobsController < ApplicationController
  def index
    @jobs = Job.all
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
    @job = Job.where(id: params[:id]).first
    @boats = Boat.all
  end
  
  def update
    @job = Job.where(id: params[:id]).first
    @job.update(jobs_params)
    boat = params[:boats]
    boat_remove = params[:boats_remove]
    if boat != ""
      @boat = Boat.where(id: boat).first
      if @boat != nil
        @job.boats << @boat
      end
    end
    if boat_remove != ""
      @boat_remove = Boat.where(id: boat_remove).first
      @job.boats.delete(@boat_remove)
    end
    if @job.save
      redirect_to "/jobs/#{@job.id}"
    else
      render "/jobs/#{@job.id}/edit"
    end
  end

  def delete
  end

  def show
    @job = Job.where(id: params[:id]).first

    @boats = Boat.all
  end



  private

  def jobs_params
    params.require(:job).permit(:name, :origin, :destination, :cost, :containers_needed, :descrip, :user_id, :boat)
  end
end

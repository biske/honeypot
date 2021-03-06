class TasksController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @task = Task.new
  end
  
  def create
    # Task should be created manually. For example:
    # Convert from fields days, hours and minutes to duration in seconds.
    params[:task][:duration] = (params[:task][:days].to_i * 86400 + params[:task][:hours].to_i * 3600 + params[:task][:minutes].to_i * 60).to_s
    params[:task].delete(:days)
    params[:task].delete(:hours)
    params[:task].delete(:minutes)
    @task = current_user.tasks.build(task_params)
    
    if @task.save
      flash[:notice] = "Task successfuly created."
      redirect_to user_task_path(current_user, @task)
    else
      flash[:notice] = "Correct errors."
      render :new
    end
  end
  
  def show
    # Double check it :)
    @task = Task.find(params[:id])
    @json = @task.to_gmaps4rails do |locations, marker|
      marker.picture({
                  :picture => "http://www.google.com/intl/en_us/mapfiles/ms/micons/blue-dot.png",
                  :width   => 32,
                  :height  => 32
      })
    end
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    params[:task][:duration] = (params[:task][:days].to_i * 86400 + params[:task][:hours].to_i * 3600 + params[:task][:minutes].to_i * 60).to_s
    params[:task].delete(:days)
    params[:task].delete(:hours)
    params[:task].delete(:minutes)
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      flash[:notice] = "Task successfuly updated."
      redirect_to user_task_path(current_user, @task)
    else
      render action: "edit"
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "Task successfully deleted."
    redirect_to user_dashboard_path(current_user)
  end
  
  private
  def task_params
    params.require(:task).permit(:title, :who, :what, :where, :when, :duration, :how_much, :contact, :image)
  end
end
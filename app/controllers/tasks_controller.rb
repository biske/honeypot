class TasksController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @task = Task.new
  end
  
  def create
    @task = current_user.tasks.build(params[:task])
    if @task.save
      redirect_to user_dashboard_path(current_user)
    else
      redirect_to new_user_task_path(current_user)
    end
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    
  end
end
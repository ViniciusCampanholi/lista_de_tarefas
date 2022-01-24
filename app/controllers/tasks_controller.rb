class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new

  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    # binding.pry 
    @task = Task.find(params[:id])
    
    puts task_params
    @task.update(task_params)
    redirect_to root_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end
  
  private
  def task_params
    params.require(:task).permit(:title, :body, :status, :date, :alert)
  end
end

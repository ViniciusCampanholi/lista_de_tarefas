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
    @task = Task.new(params.require(:task).permit(:title, :body, :status, :date, :alert))
    @task.save
    redirect_to root_path
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task = Task.update(params.require(:task).permit(:title, :body, :status, :date, :alert))
    redirect_to root_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end
end

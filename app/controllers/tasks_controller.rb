class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    # self.show #ya pero no de esta manera, unforeseen consequences
    @task = Task.find(params[:id])
  end

  def update 
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end


  private
  # strong params!
  # only YOU can prevent hackers/crackers
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
    # Save the instance of Task in a instance variable named task
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    # No need a view create.html.erb so redirect:
    redirect_to task_path(@task)
  end

  def edit
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    # raise
    @task.update(task_params)
    # view not needed so redirect to the task individual page:
    redirect_to task_path(@task)
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    #
    # no need for view destroy so redirect with 303:
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end

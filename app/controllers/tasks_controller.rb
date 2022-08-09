class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    # Save the instance of Task in a instance variable named task
    @task = Task.new
  end

  def create
    # raise
    # @task = Task.new(params[:])
  end
end

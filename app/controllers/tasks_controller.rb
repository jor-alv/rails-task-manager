class TasksController < ApplicationController
  # This first line allows for the refactoring of the first line of
  # the methods show, edit, update and destroy, i.e.
  # @task = Task.find(params[:id])
  # Note that not all lines had @, so it needs to be added for refactoring purposes
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # CREATE (GET)
  def new
    @task = Task.new
  end

  # READ (GET) 1
  def index
    @tasks = Task.all
  end

  # READ (GET) 2
  def show
    # @task = Task.find(params[:id])
  end

  # CREATE (POST)
  def create
    task = Task.new(task_params)
    task.save

    redirect_to task_path(task)
  end

  # UPDATE (GET)
  def edit
    # @task = Task.find(params[:id])
  end

  # UPDATE (PATCH)
  def update
    # task = Task.find(params[:id])
    # task.update(task_params)

    # redirect_to task_path(task)
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  # DELETE (DELETE)
  def destroy
    # task = Task.find(params[:id])
    # task.destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end

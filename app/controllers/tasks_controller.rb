class TasksController < ApplicationController
  # create
  def create
    @task = Task.new(task_params)
    @task.user = current_user
    if @task.save
      flash[:notice] = 'Task saved!'
      redirect_to request.referer
    else
      flash[:alert] = 'Error'
    end
  end

  # new

  
  # edit

  # update

  # destroy

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = 'Task deleted'
    redirect_to request.referer
  end

  private

  def task_params
    params.require(:task).permit(:name, :monthly)
  end
end

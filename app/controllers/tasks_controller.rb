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

  def check
    set_task
    @task.done = !@task.done
    @task.save
    redirect_to "/##{Task.last.id}"
  end

  def destroy
    set_task
    @task.destroy
    flash[:notice] = 'Task deleted'
    redirect_to request.referer
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :monthly)
  end
end

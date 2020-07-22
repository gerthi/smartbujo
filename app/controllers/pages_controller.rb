class PagesController < ApplicationController
  def home
    @users = User.all
    @routines = Routine.all
    @tasks = Task.all
    @task = Task.new
  end

  def yo
  end
end

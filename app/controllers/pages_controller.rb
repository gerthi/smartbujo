class PagesController < ApplicationController
  def home
    @users = User.all
    @routines = Routine.all
    @tasks = Task.all.sort { |a,b| a.id <=> b.id }
    @task = Task.new
  end

  def yo
  end
end

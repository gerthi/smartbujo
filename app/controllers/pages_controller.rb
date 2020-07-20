class PagesController < ApplicationController
  def home
    @users = User.all
    @routines = Routine.all
    @tasks = Task.all
  end

  def yo
  end
end

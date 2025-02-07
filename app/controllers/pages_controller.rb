class PagesController < ApplicationController
  before_action :authenticate_user!
  def home

  end

  def update_counter
    current_user.counter +=1
    current_user.save

    redirect_to root_path
  end
end

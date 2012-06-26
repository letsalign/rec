class PagesController < ApplicationController
 before_filter :authenticate_user!
  def home
    @ideas = current_user.ideas
  end
end

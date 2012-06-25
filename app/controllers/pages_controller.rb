class PagesController < ApplicationController
 before_filter :authenticate_user!
  def home
    @topics = current_user.topics
  end
end

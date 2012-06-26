class PagesController < ApplicationController
 before_filter :authenticate_user!
  def home
    @groups = current_user.groups
  end
end

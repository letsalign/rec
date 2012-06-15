class PagesController < ApplicationController
 before_filter :authenticate_user!
  def home
    @ideas = Company.where(:id => current_user.company_id).first.ideas
  end
end

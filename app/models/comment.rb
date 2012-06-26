class Comment < ActiveRecord::Base
  belongs_to :idea
  belongs_to :user
  attr_accessible :body, :user_id, :idea_id
end

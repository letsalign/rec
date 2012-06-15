class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea
  attr_accessible :body
end

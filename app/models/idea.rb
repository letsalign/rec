class Idea < ActiveRecord::Base
  acts_as_votable
  
  belongs_to :topic
  has_many :comments
  attr_accessible :body, :title, :topic_id
end

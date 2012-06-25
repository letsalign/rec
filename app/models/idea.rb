class Idea < ActiveRecord::Base
  belongs_to :topic
  has_many :comments
  attr_accessible :body, :title, :topic_id
end

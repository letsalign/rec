class Idea < ActiveRecord::Base
  belongs_to :topic
  attr_accessible :body, :title, :topic_id
end

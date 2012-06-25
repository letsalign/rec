class TopicsUsers < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  attr_accessible :topic_id, :user_id
end

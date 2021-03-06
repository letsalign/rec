class Idea < ActiveRecord::Base
  acts_as_voteable
  
  belongs_to :user
  belongs_to :group
  has_many :comments
  attr_accessible :description, :title, :user_id, :group_id
end

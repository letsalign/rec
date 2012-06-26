class Group < ActiveRecord::Base
  has_and_belongs_to_many :user
  has_many :ideas
  attr_accessible :description, :title
end

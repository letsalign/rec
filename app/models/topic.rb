class Topic < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :ideas
  attr_accessible :description, :name
end

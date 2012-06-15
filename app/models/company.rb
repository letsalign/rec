class Company < ActiveRecord::Base
  has_many :users
  has_many :groups
  has_many :ideas, :through => :users
  attr_accessible :description, :name
end

class Group < ActiveRecord::Base
  belongs_to :company
  #has_and_belongs_to_many :users
  attr_accessible :description, :name
end

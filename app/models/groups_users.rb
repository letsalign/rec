class GroupsUsers < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  attr_accessible :user_id,:group_id,:is_admin,:is_approved,:added_by_id,:approved_by_id
end

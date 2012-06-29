class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :to , :class_name => "User"
  attr_accessible :notification_type, :read_at, :target_id, :target_type, :to_id,:user_id,:target
  
   belongs_to :target, :polymorphic => true
    
    validates :user_id, :presence => true
    validates :notification_type, :presence => true
    validates :target_id, :presence => true
    validates :target_type, :presence => true
    
    default_scope :order => 'notifications.created_at ASC'
    
    USER_UPVOTED_IDEA   =  1
    USER_COMMENTED_ON_IDEA = 2
    GROUP_JOIN_REQ = 3
    GROUP_MEMBER_ADDED = 4
    
    class << self
        def add(user_id, to_id, notification_type, target)
            return false if user_id.nil? or to_id.nil? or notification_type.nil? or target.nil?
            notification = Notification.new(:user_id => user_id, :to_id => to_id, :notification_type => notification_type, :target => target)
            notification.save!
        end
    end
    
    
end

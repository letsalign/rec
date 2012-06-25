class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:twitter_token, :twitter_token_secret, :name, :username, :twitter_uid, :location
  # attr_accessible :title, :body
  #validates_presence_of :email, :allow_blank => true
  
  #belongs_to :company
  has_and_belongs_to_many :topics
  has_many :ideas, :through => :topics
  has_many :comments, :through => :ideas
  #has_many :comments
  #has_and_belongs_to_many :groups
=begin 
   def self.find_for_twitter_oauth(access_token, signed_in_resource=nil)
	logger.debug"#{access_token.credentials.token}"
	if user = self.find_by_twitter_uid(access_token.uid)
           user
        else # Create a user with a stub password. 
           self.create!(:password => Devise.friendly_token[0,20],:twitter_token => access_token.credentials.token,:twitter_token_secret => access_token.credentials.secret,:name => access_token.info.name,:username => access_token.info.nickname, :twitter_uid => access_token.uid, :location => access_token.info.location) 
        end
  end
=end  
  
  
end

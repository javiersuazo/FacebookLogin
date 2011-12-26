class User < ActiveRecord::Base
	has_many :authentications
	has_many :collects	
  	attr_accessible :name, :email, :username, :password, :password_confirmation
	has_secure_password
	
  validates_uniqueness_of :email
  validates_presence_of :password, :on => :create
	validates_presence_of :email
	
	def self.create_from_hash(hash, user = nil)
	  user ||= User.create_from_hash!(hash, user)
	end
	
	def self.create_from_hash!(hash, user)
	    guid = 'hello'
	    
  		user = create(:name => hash['user_info']['name'], :email => hash['user_info']['email'], :password => guid, :password_confirmation => guid)
  		Authentication.create(:uid => hash['uid'], :provider => hash['provider'], :user_id => user.id)
	end
	
end

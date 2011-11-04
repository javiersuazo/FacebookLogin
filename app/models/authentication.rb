class Authentication < ActiveRecord::Base
  belongs_to :user
  
  def self.find_from_hash(hash)
	  find_by_provider_and_uid(hash['provider'], hash['uid'])
	end
	
end

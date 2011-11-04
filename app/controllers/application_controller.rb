class ApplicationController < ActionController::Base
	protect_from_forgery
  	helper_method :logged_in?, :current_user, :authorize, :current_uid, :current_provider
  	
	def current_user
		@current_user ||= User.find_by_id(session[:user_id])
	end
	
	def current_uid
		fb_user_id ||= current_user.authentications[0][:uid]
	end
	def current_provider
		social_provider ||= current_user.authentications[0][:provider]
	end
	
	def logged_in?
    	!!current_user
  	end
  	
  	def authorize 
		unless logged_in? && current_user
	    	flash[:notice] = "Please log in" 
	      	redirect_to root_path
	    end 
	end
end

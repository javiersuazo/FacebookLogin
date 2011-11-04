class SessionController < ApplicationController
	
	def create_social
		hash = request.env['omniauth.auth']
		@auth = Authentication.find_from_hash(hash)
		
		if @auth.nil?
			@auth = User.create_from_hash(hash, current_user)
		end
		
		current_user = User.find(@auth.user_id)
		session[:user_id] = current_user.id
		
		if current_user.username.nil?
		  redirect_to edit_user_path(current_user.id)
	  else
	    redirect_to welcome_home_path
    end
	  
	end
	
	def destroy
		session[:session_id] = nil
		session[:user_id] = nil
		redirect_to root_path, :notice => "You've been logged out."
	end
end

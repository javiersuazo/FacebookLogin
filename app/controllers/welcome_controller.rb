class WelcomeController < ApplicationController
  
  before_filter :authorize, :only => [:home]
  
  def index
    @user = User.new
  	if logged_in?
  		redirect_to welcome_home_path
  	end
  end

  def home
   @collect = Collect.new  	
  end
  
end

Sociallogin::Application.routes.draw do  

	root :to => 'welcome#index'
	get "welcome/index"
	get "welcome/home"
	
	resources :users
	
	match '/auth/:provider/callback', :to => 'session#create_social', :as => 'social_login'
  match 'logout' => 'session#destroy', :as => 'logout'
  	
  	
  	
end
